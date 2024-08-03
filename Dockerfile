# Use an Alpine Linux base image
FROM alpine:latest

# Install required packages
RUN apk update && apk add --no-cache bash

# Set the working directory
WORKDIR /app

# Copy the server files to the container
COPY . /app

# Make the run.sh script executable
RUN chmod +x run.sh

# Set the default command to run the server
CMD ["./run.sh"]

