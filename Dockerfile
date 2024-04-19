# Use the official Amazon Corretto 17 image in alpine to reduce image size
FROM amazoncorretto:17-alpine

# Sets the working directory for following COPY and CMD instructions
WORKDIR /app

# Copy the downloaded jar artifact to the container
COPY tmp/artifact/ArquiSoft-Lab02-0.0.1-SNAPSHOT.jar /app/lab2.jar

# Expose the port 8080
EXPOSE 8080

# Run the jar file. Using entrypoint indicates that the container will be runned as an executable.
ENTRYPOINT ["java", "-jar", "lab2.jar"]
