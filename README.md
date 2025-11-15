# commanloo

> A simple C-based game where the goal is to reach the end of a maze within a certain number of moves.

## About the Project

This project is a simple terminal-based game developed for an Algorithms and Data Structures course at the Federal University of Viçosa. The objective is to navigate a maze and reach the end within a limited number of attempts, using data structures to manage player movements.

![Demo of commanloo](https://github.com/luizvilasboas/commanloo/blob/main/img/demo.png?raw=true)

## Tech Stack

The main technologies used in this project are:

*   [C](https://en.wikipedia.org/wiki/C_(programming_language))
*   [Make](https://www.gnu.org/software/make/)
*   [Docker](https://www.docker.com/)

## Usage

You can run this project either directly on your machine or within a Docker container.

### Prerequisites

*   For local execution: [GNU Make](https://www.gnu.org/software/make/)
*   For containerized execution: [Docker](https://docs.docker.com/get-docker/)

### Installation and Setup (Local Machine)

Follow the steps below:

1.  **Clone the repository**
    ```bash
    git clone https://github.com/luizvilasboas/commanloo.git
    ```

2.  **Navigate to the project directory**
    ```bash
    cd commanloo
    ```

3.  **Compile the project**
    ```bash
    make
    ```

4.  **Run the application**
    ```bash
    ./bin/commanloo
    ```

### Installation and Setup (Docker)

Follow the steps below:

1.  **Clone the repository**
    ```bash
    git clone https://github.com/luizvilasboas/commanloo.git
    ```

2.  **Navigate to the project directory**
    ```bash
    cd commanloo
    ```

3.  **Build the Docker image**
    ```bash
    docker build -t olooeez/commanloo:latest .
    ```

4.  **Run the image in a container**
    ```bash
    docker run -it --rm olooeez/commanloo:latest
    ```

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
