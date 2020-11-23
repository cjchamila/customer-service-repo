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
 
 		def customImage=docker.build ('customerservice-img:latest -f Dockerfile')
  
  docker.withRegistry('https://us.gcr.io', 'gcr:gcr-project') {
  
  docker tag SOURCE_IMAGE[':customerservice-img${env.BUILD_ID}'] TARGET_IMAGE[':customerservice-targetimg${env.BUILD_ID}']
  
	
      //  def customImage = docker.build(/*"gcr-project:${env.BUILD_ID}"*/"customerservice-img:latest -f Dockerfile")

        /* Push the container to the custom Registry */
        customImage.push()
    }
			}
		   
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
}