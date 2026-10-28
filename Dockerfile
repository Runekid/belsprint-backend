
FROM eclipse-temurin:25-jre

WORKDIR /app

COPY app/target/app-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar", "--server.address=0.0.0.0"]
