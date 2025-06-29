FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
ARG JAR_FILE=target/EUREKA-SERVER-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} eureka_server.jar
EXPOSE 8761
CMD ["java", "-jar", "eureka_server.jar"]