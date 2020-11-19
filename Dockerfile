FROM ubuntu:latest

RUN ["bash", "cd","usr/bin"]

RUN ["bash", "mkdir","Java"]

ENV JAVA_DIR=/usr/bin/Java

WORKDIR /usr/lib

RUN ["bash", "install", "openjdk-8-jdk", "-t", "$JAVA_DIR"]

ADD ./../../../Windows/system32/config/systemprofile/.m2/repository/com/chamila/customerservice/customer-service/0.0.1-SNAPSHOT/customer-service-0.0.1-SNAPSHOT.jar /customer-service.jar

ENTRYPOINT ["java","-jar","WORKDIR/customer-service.jar"]
