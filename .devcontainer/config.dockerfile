FROM ubuntu:latest

# Install necessary packages
RUN apt-get update && \
    apt-get install -y build-essential valgrind gdb

# Set the working directory
WORKDIR /workspace