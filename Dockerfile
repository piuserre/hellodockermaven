# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="giuseppe.pierri@yahoo.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8089 available to the world outside this container
EXPOSE 8089

# The application's jar file
ARG JAR_FILE=target/ProvaApplication-1.0.0.jar

# Add the application's jar to the container
ADD ${JAR_FILE} ProvaApplication.jar

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/ProvaApplication.jar"]