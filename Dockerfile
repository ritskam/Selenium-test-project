FROM openjdk:17-jdk-slim

# Set the JAVA_HOME environment variable
ENV JAVA_HOME=/usr/local/openjdk-17
ENV PATH="$JAVA_HOME/bin:$PATH"

# Copy the current directory contents into the container at /app
COPY . /app

# Set the working directory inside the container to /app
WORKDIR /app

# Install Maven
RUN apt-get update && apt-get install -y maven

# Run Maven clean test command
CMD ["mvn", "clean", "test"]
