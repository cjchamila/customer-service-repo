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
 
 	def customImageFinal=docker.build ('gcr.io/gcr-project-296102/customerservice-img:latest')
 		
 		
  
  docker.withRegistry('https://gcr.io', 'gcr:gcr-project') { 
  
  //def customImageFinal = build('gcr.io/gcr-project-296102/customerservice-img:latest') 

        /* Push the container to the custom Registry */ 
        customImageFinal.push()
    } 
			}
			
			
			
			}

		   
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
