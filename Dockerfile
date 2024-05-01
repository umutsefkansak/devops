FROM openjdk:21
FROM nginx
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]

