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
           
           
            docker(Image.id) {
            args '-v C:/Windows/system32/config/systemprofile/AppData/Local/Jenkins/.jenkins/workspace/er-service-pipeline-rentacar_dev/:/usr/Java'
            
        }
       }

 		steps{
 		agent{
 		    docker{
 		        image:Image.id
 		    }

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