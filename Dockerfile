# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install flask

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME "Hello! Ar bwar Mwa Chi. Thank you for reading Blog xD"

# Run app.py when the container launches
CMD ["python", "app.py"]
