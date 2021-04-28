FROM maven:3.6.0-jdk-11-slim AS build

COPY src src
COPY pom.xml .
RUN mvn -f pom.xml clean package install

FROM openjdk:latest
Expose 8085

COPY --from=build /target /opt/target
WORKDIR /target

RUN ls

CMD ["java", "-jar", "docker-demo.jar"]
