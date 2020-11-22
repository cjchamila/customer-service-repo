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
      
     agent any

 		steps{
 		 node {
    checkout scm
    def dockerfile = 'Dockerfile'
    def customImage = docker.build("customerservice-img:${env.BUILD_ID}", "-f ${dockerfile} .") 
}
		script{
		   docker.withDockerContainer(Image.id){
 		     sh '''
 		   echo 'Hi Chamila'
               '''
 		} 
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
}