# Use an official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define the environment variable for Flask
ENV FLASK_APP=hello.py

# Run the Flask app when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]