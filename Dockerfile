# Use the official Python base image with the desired version
FROM python:3.8

# Install libmysqlclient-dev package
RUN apt-get update && \
    apt-get install -y default-libmysqlclient-dev

# Set the working directory in the container
WORKDIR /app

# Copy your project files to the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set the entry point command
CMD ["python", "main.py"]

