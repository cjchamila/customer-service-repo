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
 
 		docker.build 'customerservice-img:latest -f Dockerfile'
  
			}
		   
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
}