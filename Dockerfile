FROM openjdk:21
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]

FROM httpd:latest
EXPOSE 80
COPY ./src/ /usr/local/apache2/htdocs/