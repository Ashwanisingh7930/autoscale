# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 to be accessible outside the container
EXPOSE 8080

# Define the command to run the app
CMD ["python", "app.py"]
