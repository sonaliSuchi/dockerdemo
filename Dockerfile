FROM maven:3.6.0-jdk-11-slim AS build

COPY docker-demo/src src
COPY docker-demo/pom.xml .
RUN mvn -f pom.xml clean package install

FROM openjdk:latest
Expose 8085

ADD /root/.m2/repository/com/miishhift/docker-demo/0.0.1-SNAPSHOT/docker-demo-0.0.1-SNAPSHOT.jar docker-demo-0.0.1-SNAPSHOT.jar


RUN ls

CMD ["java", "-jar", "docker-demo-0.0.1-SNAPSHOT.jar"]
