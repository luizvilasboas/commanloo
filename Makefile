CC = gcc
CFLAGS = -Wall -Wextra -O2 -std=c99 -pedantic -fprofile-arcs -ftest-coverage

HDR = include
BIN = bin
SRC = src
OBJ = obj
TEST = test

SRCS := $(wildcard $(SRC)/*.c)
OBJS := $(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))

TEST_SRCS := $(wildcard $(TEST)/*.c)
TEST_BINS := $(patsubst $(TEST)/%.c, $(TEST)/bin/%, $(TEST_SRCS))

NAME = commanloo
VERSION = 0.1.0

all: $(OBJ) $(BIN) $(BIN)/$(NAME)

$(BIN)/$(NAME): main.c $(OBJS)
	$(CC) $(CFLAGS) -I $(HDR) $^ -o $@

$(OBJ):
	mkdir -p $@

$(BIN):
	mkdir -p $@

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) -I $(HDR) -c $< -o $@

$(TEST)/bin/%: $(TEST)/%.c $(OBJS)
	$(CC) $(CFLAGS) -I $(HDR) $< $(OBJS) -o $@ -lcriterion -lgcov

$(TEST)/bin:
	mkdir -p $@

check: $(TEST)/bin $(TEST_BINS)
	for test in $(TEST_BINS); do ./$$test; done

coverage: $(TEST)/bin $(TEST_BINS)
	rm -f *.gcno *.gcda *.gcov
	for test in $(TEST_BINS); do ./$$test; done
	gcovr --xml-pretty --exclude-unreachable-branches --print-summary -o coverage.xml --root .

clean:
	$(RM) -rf $(OBJ) $(BIN) $(TEST)/bin *.gcno *.gcda *.gcov $(TEST)/*.gcov coverage.xml

run: all
	./$(BIN)/$(NAME)

.PHONY: all clean test lint docker submit coverage
