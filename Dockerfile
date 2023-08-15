FROM --platform=linux/amd64 eclipse-temurin:17-jre-alpine
ARG APP_VERSION
WORKDIR /app
COPY target/spring-petclinic-${APP_VERSION}.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]

