# MDESCS Microservices Project

This project allows you to run the microservices locally using prebuilt Docker images hosted in a private Docker Hub repository.

## Prerequisites
1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) (or equivalent).
2. Ensure Docker Compose is installed (bundled with Docker Desktop).
3. You must have access to the private Docker Hub repository. Contact the project owner if you don't.

## Steps to Run the Project

### 1. Log in to Docker Hub
Run the following command in your terminal:

```bash
docker login
```

Enter your Docker Hub username and password when prompted. Ensure you have been granted access to the private repositories.

### 2. Clone or Download the Repository
Clone the repository from the provided URL or download it as a zip file:

```bash
git clone https://github.com/developerPT1542/mdes-services.git
cd microservices-project
```

### 3. Start the Services
Run the following command to start all services:

```bash
docker-compose up -d
```

This will pull the Docker images from the private repository and start the containers.

### 4. Access the Services
Once the services are running, you can access them using the following URLs:

- **Consul UI:** [http://localhost:8500](http://localhost:8500)
- **Gateway Service:** [http://localhost:8080](http://localhost:8080)
- **MDESCS Service:** [http://localhost:8081](http://localhost:8082)
- **MongoDB:** [http://localhost:27017](http://localhost:27017)
- **MySQL:** [http://localhost:3306](http://localhost:3306)

### 5. Stop the Services
To stop the running containers, use:

```bash
docker-compose down
```

## Notes
- **Private Docker Hub Repository:** Ensure you have logged in to Docker Hub and have the necessary permissions to access the private images.
- **Logs:** If you encounter issues, check the logs by running:

  ```bash
  docker-compose logs -f
  ```
- **Volumes:** Data for MySQL and MongoDB is stored in the `db-data/` directory in the project folder. You can back up or clear these files if needed.
- **Restart Services:** If changes are made, restart the services using:

  ```bash
  docker-compose down && docker-compose up -d
  ```