# Use the base Railway Python image
FROM railwayapp/nixpacks


# Update package repositories and install libmysqlclient-dev
RUN apt-get update && \
    apt-get install -y libmysqlclient-dev

# Set the working directory
WORKDIR /app

# Copy your project files to the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Set the entry point command
CMD ["python", "main.py"]
