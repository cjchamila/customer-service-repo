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
            echo 'In Post build stage...'
            }
       }
       
                     
 }
        }
     
 
