FROM maven:3.9.2-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/TakemeHome0_0-0.0.1-SNAPSHOT.jar TakemeHome0_0.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","TakemeHome0_0.jar"]