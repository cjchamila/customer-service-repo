
FROM alpine:3.7
RUN apk add --no-cache mysql-client
ENTRYPOINT ["mysql"]


#FROM ubuntu:latest

#CMD ["bash", "-c","cd usr && mkdir Java"]

#ENV JAVA_DIR=/usr/Java

#WORKDIR $JAVA_DIR

#RUN ["bash","-c", "apt update && apt-get -y install openjdk-8-jdk"]

#ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

#ADD /customer-service/target/customer-service.jar $JAVA_DIR/ 

#CMD ["bash", "-c", "SET PATH=$JAVA_HOME/bin"]

#ENTRYPOINT ["java","-jar","customer-service.jar"] 
