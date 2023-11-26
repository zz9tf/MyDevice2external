# My Device to External

This repository is designed to enable your local device to act as a cloud service, allowing it to host multiple Docker containers that can be accessed externally. It applied cloudflare tunnel service to transfer any request from outside to your device safely and esaily. It also provided a list basic frameworks docker containers setup shell script, allowing people deploy their frameworks which can be accessed within one line command!

## Problem it solved
  - The unnecessary cost of cloud services.
  - Safety problems and maintenance of external requests to local device.
  - Difficult to deploy and port the development environment.

## Getting Started

To get started with using this repository, follow the instructions below:

### Prerequisites

Before you can deploy your local device as a cloud service, ensure that you have the following prerequisites installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)
- Domain name: [Get one domain name(https://www.godaddy.com/)]
- Unix like terminal: Mac, WSL, Linux, ect.
- Cloudflare account: To setup your domain name, and use their tunnel service in their zero trust service.

### Deployment

This repo suppose you already set up domain name and actived zero turst service in cloudflare account. To deploy your local device as a cloud service, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/my-device-to-external.git
   ```

2. Navigate to the cloned repository:

   ```bash
   cd my-device-to-external
   ```

3. Set up cloudflare tunnel service

- a. Set up `.env` file in the root folder.

     ```.env
     TUNNEL_TOKEN=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
     ```
     It should be something like this. You can get your token in cloudflare account.

- b. Directlly run docker-compose.yml to deploy cloudflare tunnel service by commands:
    ```bash
    docker-compose up -d
    ```

Now, your tunnel service already finished. Feel free to create more containers to connect the network deploy in previous docker-compose.yml, and then these containers can be accessed externally.

## Deploy Basic frameworks with one command

  You can run them in your github project folders, and then anything you developed in these folders can be accessed outside.(api service, webpages, etc.)

  - Express backend with nodemon and babel.js

    ```bash
    ./setup-express.sh
    ```
    
    - Django framework with requirments.txt file

    ```bash
    ./setup-django.sh
    ```

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository on GitHub.
2. Create a new branch with a descriptive name for your feature or bug fix.
3. Make the necessary changes in your branch.
4. Commit and push your changes to your forked repository.
5. Submit a pull request to the main repository, explaining the changes you have made.

Please ensure that your contributions align with the coding standards, best practices, and guidelines defined in this repository.

## License

This project is licensed under the [MIT License](LICENSE). Feel free to modify and distribute it as per your needs.

## Acknowledgments

This project makes use of the following open-source tools and libraries:

- Docker: [https://www.docker.com/](https://www.docker.com/)
- Docker Compose: [https://docs.docker.com/compose/](https://docs.docker.com/compose/)

I would like to express my gratitude to the developers of these fantastic tools for their contributions to the open-source community.

## Contact

For any questions, suggestions, or issues, please feel free to contact the project maintainers.

You can also open an issue in the GitHub repository for bug reports or feature requests.

Happy cloud hosting!
