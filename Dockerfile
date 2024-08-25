
# syntax=docker/dockerfile:1

# Use the official Python image as the base image
FROM python:3.9.13-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Expose port 5000 for Flask
EXPOSE 5000

# Run the Flask server using the Flask CLI with the host set to 0.0.0.0
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]

