# HW4: Dockerized Flask Application

This repository contains a Dockerized Flask web application for the HW4 assignment. The application is built, tested, and deployed to Docker Hub using GitHub Actions.

## Project Structure
- `app.py`: Flask application code.
- `requirements.txt`: Python dependencies.
- `Dockerfile`: Instructions to build the Docker image.
- `.github/workflows/docker-build-push.yml`: GitHub Actions workflow to build and push the Docker image.

## Prerequisites
- Docker installed locally.
- Python 3.9+ (for local development).
- A Docker Hub account.
- A GitHub account.

### 1. Clone the Repository
Clone the repository to your local machine:
```bash
git clone https://github.com/Leonard-Tsai-2003/CNADhw4.git
cd CNADhw4
```

### 2. Build the Docker Image
Build the Docker image using the provided Dockerfile:
```bash
docker build -t cnadhw4 .
```

### 3. Run the Docker Container
Run the container and map port 5001 to access the application:
```bash
docker run -p 5001:5001 cnadhw4
```
Open a browser and visit `http://localhost:5001` to see the application running (displays "Hello, Docker!").

## GitHub Actions Workflow
- The workflow triggers on pushes to the `main` branch.
- It builds the Docker image and pushes it to Docker Hub as `leonardtsai92/cnadhw4:latest`.
- Secrets `DOCKERHUB_USERNAME` and `DOCKERHUB_TOKEN` are used for Docker Hub authentication.

## Docker Hub
The Docker image is available at:
- [leonardtsai92/2025cloud](https://hub.docker.com/r/leonardtsai92/2025cloud)

## Testing the Docker Hub Image
To test the image directly from Docker Hub:
```bash
docker pull leonardtsai92/2025cloud:latest
docker run -p 5001:5001 leonardtsai92/2025cloud:latest
```
Visit `http://localhost:5001` to verify.

## License
MIT License

![Workflow](workflow.png)