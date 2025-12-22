# AI Usage

I utilized the **JetBrains AI Assistant** throughout this project. 
While I have prior experience working with **Junie** (JetBrains' internal AI tool), I did not use it for this particular project. 

Additionally, I set up **Docker containerization** for the application to simplify deployment and ensure consistent environment configuration.

## Running the Application with Docker

To run the application using Docker containers:

1. Make sure Docker and Docker Compose are installed on your system
2. Navigate to the project root directory
3. Run the following command: "docker-compose -f docker/docker-compose.yml up --build"

This will:
- Build and start the frontend container on `http://localhost:4200`
- Build and start the backend container on `http://localhost:8080`

To stop the containers: "docker-compose -f docker/docker-compose.yml down"