FROM openjdk:21
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]
