#FROM ubuntu:latest
#CMD ["bash", "-c","cd usr && mkdir Java"]
#ENV JAVA_DIR=/usr/Java
#WORKDIR $JAVA_DIR
#RUN ["bash","-c", "apt update && apt-get -y install openjdk8"]
#ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
#ADD /customer-service/target/customer-service.jar $JAVA_DIR/ 
#CMD ["bash", "-c", "SET PATH=$JAVA_HOME/bin"]
#ENTRYPOINT ["java","-jar","customer-service.jar"] 


FROM alpine:3.7

CMD ["/bin/sh", "-c", "mkdir -p /opt/java && cd /opt/java"]

ENV JAVA_DIR=/opt/java

WORKDIR $JAVA_DIR

RUN ["/bin/sh","-c", "apk update && apk add -y openjdk8"] 

CMD ["/bin/sh", "-c", "sudo tar -zxvf jdk-8u271-linux-aarch64.tar.gz"]

CMD ["/bin/sh", "-c", "ln -s /opt/java/jdk1.8.0_271 /opt/java/current"]

CMD ["/bin/sh", "-c", "export JAVA_HOME=/opt/java/current"]

CMD ["/bin/sh", "-c", "export PATH=$PATH:$JAVA_HOME/bin"]

CMD ["/bin/sh", "-c", "/etc/profile.d/java.sh"]

ADD /customer-service/target/customer-service.jar $JAVA_DIR/

ENTRYPOINT ["java","-jar","customer-service.jar"] 
