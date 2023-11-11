# Use a base image with Alpine Linux and OpenJDK 17
FROM khipu/openjdk17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from your local machine to the container
COPY target/ms-gatway-1.0.0.jar app.jar

# Expose the port your application listens on (e.g., 8080)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "app.jar","--spring.profiles.active=prod"]