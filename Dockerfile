FROM openjdk:latest
Expose 8085

ADD docker-demo/target/docker-demo.jar docker-demo.jar

ENTRYPOINT ["java","-jar","docker-demo.jar"]
