# README

# Invest Portagon

Invest Portagon is a Ruby on Rails application designed for managing investments and issuances for users.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- You have installed Docker on your machine: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- You have basic knowledge of Docker and Ruby on Rails.

## Installation

To install and run Invest Portagon locally, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/ajdxt/invest-portagon.git
    ```

2. Change directory to the project root:
    ```sh
    cd invest-portagon
    ```

3. Build the Docker image:
    ```sh
    docker build -t invest-portagon-image .
    ```

4. Run the Docker container:
    ```sh
    docker run -p 3001:3001 invest-portagon-image
    ```

5. Access the application in your web browser at `http://localhost:3001`.

## Usage

Navigate different tabs around the admin application to access `issuances` and `insurances`

## Contributing

Contributions are what make the open-source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the project.
2. Create your feature branch: `git checkout -b feature/AmazingFeature`
3. Commit your changes: `git commit -m 'Add some AmazingFeature'`
4. Push to the branch: `git push origin feature/AmazingFeature`
5. Open a pull request.

## License

NA

## Contact

Ajith Kumar S - aju.126@gmail.com

Project Link: [https://github.com/ajdxt/invest-portagon](https://github.com/ajdxt/invest-portagon)
