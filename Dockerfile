FROM openjdk:17

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
#COPY target/task_management-0.0.1-SNAPSHOT.jar /app/app.jar
COPY target/*.jar /app/app.jar

# Specify the command to run on container
ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8181
