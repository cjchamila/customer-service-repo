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
 	label node  {
            
             args  'customerservice-img:${BUILD_NUMBER} '  
         
        }
 		agent {
       dockerfile{
      
       filename 'Dockerfile'  
        
       
           }
           
         
       }
 		
		script{
		   docker.withDockerContainer(Image.id){
 		     sh '''
 		   echo 'Docker container = Image.id'
               '''
 		} 
		}

 		

 	           
}
       
   
       
                     
 }
        }
     
 
}