FROM maven:3.9.6-eclipse-temurin-17 as builder
ARG JAR_FILE=target/jira-1.0.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar","/app.jar"]

