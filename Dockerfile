# Use OpenJDK 17 base image
FROM openjdk:17-jdk-alpine

# Add metadata about the image (optional but recommended)
LABEL maintainer="baeldung.com"

# Copy the JAR file built by Maven into the container
ADD target/MyFirstJavaProject-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application will run on (modify if needed)
EXPOSE 8080

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
