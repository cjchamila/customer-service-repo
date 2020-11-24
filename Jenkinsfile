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
       
      	steps{
 		 
		script{
		
		
		
		node {
 
 		docker.build ('customerservice-img:latest -f Dockerfile')
  
  docker.withRegistry('https://gcr.io', 'gcr:gcr-project') { 
  
   def customImage = build('-t customerservice-img:latest customerservice-img:latest/gcr-project-296102:${env.BUILD_ID}') 

        /* Push the container to the custom Registry */ 
        customImage.push()
    }
			}
			
			
			
			}

		   
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
