FROM eclipse-temurin:25-jdk-alpine AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Sử dụng JRE 25 để chạy
FROM eclipse-temurin:25-jre-alpine
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]