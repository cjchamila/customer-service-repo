FROM java:8 

ADD C:/Windows/System32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/er-service-pipeline-rentacar_dev/target/customer-service.jar customer-service.jar
ENTRYPOINT ["java","-jar","customer-service.jar"]
