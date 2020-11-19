FROM ubuntu:latest

RUN ["bash", "-c","cd usr/bin"]

RUN ["bash", "-c", "mkdir Java & cd Java"]

#ENV JAVA_DIR=/usr/bin/Java

WORKDIR /usr/lib

RUN ["bash","-c", "install openjdk-8-jdk"]

ADD ./../../../Windows/system32/config/systemprofile/.m2/repository/com/chamila/customerservice/customer-service/0.0.1-SNAPSHOT/customer-service-0.0.1-SNAPSHOT.jar /customer-service.jar

ENTRYPOINT ["java","-jar","WORKDIR/customer-service.jar"]
