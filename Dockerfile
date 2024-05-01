FROM openjdk:21
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]

FROM glassfish:latest

COPY devops.war /glassfish5/glassfish/domains/domain1/autodeploy/