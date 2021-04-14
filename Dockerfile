FROM openjdk:latest
Expose 8085

ADD docker-demo/src/deployer/docker-demo.jar docker-demo.jar

ENTRYPOINT ["java","-jar","docker-demo.jar"]
