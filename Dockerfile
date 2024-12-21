# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install the required Python dependencies
RUN pip install --no-cache-dir flask requests matplotlib

# Expose the port that the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
