FROM openjdk:21
RUN apt-get update && apt-get install -y apache2
CMD ["apache2ctl", "-D", "FOREGROUND"]

ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]
