# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Make port 80 available (optional)
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
