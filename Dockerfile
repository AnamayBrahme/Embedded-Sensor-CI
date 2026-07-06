# Use Ubuntu as the base to get access to Debian tools
FROM ubuntu:22.04

# Install the build toolchain
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    dpkg-dev \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /app

# Copy your source code into the container
COPY . .

# Create the build directory and build everything
# Instead of mkdir, just use -p (which means "don't error if it exists")
RUN mkdir -p build && cd build && cmake .. && make package