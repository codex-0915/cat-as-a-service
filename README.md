# Cat-as-a-Service (CaaS) Docker Image

This repository provides a Docker image for "Cat-as-a-Service" (CaaS), a fun web service powered by Ruby and Sinatra. It offers several cat-related endpoints for fun and entertainment. You can find the Docker image at [Docker Hub](https://hub.docker.com/r/codex0915/cat-as-a-service).

## Features

- `/` : Welcome page with instructions
- `/cat` : Returns a random cat picture
- `/fact` : Returns a random cat fact
- `/meow` : Returns a random cat meow sound

## Prerequisites

- Docker installed on your machine

## Usage

1. **Build the Docker Image**

   Clone the repository and navigate to the directory containing the `Dockerfile`. Then, build the image using the following command:

   ```bash
   docker build -t caas .
   ```

2. **Run the Docker Container**

   After building the image, you can run the container with the following command:

   ```bash
   docker run -p 3000:3000 caas
   ```

   This will start the service on port 3000. You can access the service in your web browser at `http://localhost:3000`.

3. **Access the Endpoints (via terminal)**

   - Use `curl http://localhost:3000/` to see the welcome message.
   - Use `curl http://localhost:3000/cat` for a random cat picture.
   - Use `curl http://localhost:3000/fact` for a random cat fact.
   - Use `curl http://localhost:3000/meow` for a random cat meow sound.

Enjoy your Cat-as-a-Service experience! 🐱

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or suggestions, feel free to open an issue or contact the repository maintainers.

