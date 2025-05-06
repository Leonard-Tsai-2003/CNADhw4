# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Intentionally break the build by running a non-existent command
RUN nonexistent_command_to_break_build

# Copy the application code into the container
COPY . .

# Expose port 5001 for the Flask app
EXPOSE 5001

# Command to run the application
CMD ["python", "app.py"]