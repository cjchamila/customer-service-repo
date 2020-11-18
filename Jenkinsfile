pipeline {
    agent none
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    
   
    stages {
    
        stage ('Maven clean install command...') {
   agent {
            dockerfile {
            filename 'Dockerfile'
        }
          }
            steps {
                bat '''
                    mvn clean install
                ''' 
            }          
         
        }
        
        
        }
     
    }
