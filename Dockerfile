# Use OpenJDK 11 base image
FROM openjdk:11-jdk

# Add metadata about the image (optional but recommended)
LABEL maintainer="baeldung.com"

# Copy the JAR file built by Maven into the container
ADD target/MyFirstJavaProject-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application will run on (modify if needed)
EXPOSE 7070

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
