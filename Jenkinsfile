pipeline {
    
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    
    agent { dockerfile true }
    stages {
        stage ('Maven clean install command...') {
            steps {
                bat '''
                    mvn clean install
                ''' 
            }          
         
        }
        
        stage('Post Build') {
        steps{
            agent { 
              dockerfile {
  				filename 'Dockerfile'
                          }
 
                      }
                      }
 }
        }
     
    }
