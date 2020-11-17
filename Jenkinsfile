pipeline {
    agent any
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    
   
   
        
        stage('Post Build') {
       agent {
            dockerfile {
            filename 'Dockerfile.build'
        }
        }
        steps{
            echo 'In Post build stage...'
            }
                      
 }
        }
     
    
