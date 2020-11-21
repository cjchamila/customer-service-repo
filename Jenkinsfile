pipeline {
    agent none
    
     tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    
   
    stages {  
 
        stage ('Maven clean install command...') {
       agent any
          
            steps {
                bat '''
                cd customer-service 
               
                mvn clean install 
                ''' 
            }          
         
        }
      
        
        
        stage('Post Build') {
       agent {
       dockerfile{
       filename 'Dockerfile'      
           }
       }

 		steps{
           script{

               docker.withRegistry('https://console.cloud.google.com/gcr/images/gcr-project-296102?project=gcr-project-296102', 'gcr-project') {

        def customImage = docker.build("customerservice-img:${env.BUILD_ID}")

        /* Push the container to the custom Registry */
        customImage.push()
            }

           }
}
       
   
       
                     
 }
        }
     
 
}