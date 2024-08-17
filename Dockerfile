FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/Spring-Security-JWT-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app/app_back.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app/app_back.jar"]
