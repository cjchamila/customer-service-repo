FROM ubuntu:latest

CMD ["bash", "-c","cd usr && mkdir Java && cd Java"]

#ENV JAVA_DIR=/usr/bin/Java

WORKDIR /usr/Java

RUN ["bash","-c", "apt update && apt-get -y install openjdk-8-jdk"]

CMD ["bash", "-c","cd ../../../../../../../../config/systemprofile/.m2/repository/com/chamila/customerservice/customer-service/0.0.1-SNAPSHOT"]

COPY customer-service-0.0.1-SNAPSHOT.jar /

ENTRYPOINT ["java","-jar","customer-service.jar"] 
