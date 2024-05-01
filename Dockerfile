FROM openjdk:21
ADD target/devops.jar devops.jar
ENTRYPOINT ["java","-jar","/devops.jar"]


ENV JAVA_HOME /usr/lib/jvm/Java-8-openjdk-amd64
ENV GLASSFISH_HOME /usr/local /glassFish4
ENV PATH            $PATH: $JAVA_HOME/bin: $GLASSFISH_HOME/bin

RUN apt-get update && \
    apt-get install -y curl unzip zip inotify-tools && \
    rm -rf /var/lib/apt/lists/*

RUN curl -L -o /tmp/glassFish-4.1.zip http://download.java.net/glassFish/4.1/release/glassfish-4.1.zip && \
    unzip /tmp/glassfish-4.1.zip -d /usr/local && \
    rm -f /twp/glassfish-4.1.zip

EXPOSE 8080 4848 8181
WORKDIR /usr/local /glassFish4

# verbose causes the process to remain in the foreground so that docker can track
CMD  asadmin start-domain --verbose

