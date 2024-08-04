# Use an official OpenJDK runtime as a parent image
FROM openjdk:24-jdk-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY smartgate.jar /app/smartgate.jar

# Expose the port on which the application will run
EXPOSE 8080

# Run the JAR file
CMD ["java", "-jar", "smartgate.jar"]
