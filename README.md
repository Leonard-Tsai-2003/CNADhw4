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

## Setup Instructions
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-username/hw4-docker.git
   cd hw4-docker