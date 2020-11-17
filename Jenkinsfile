pipeline {
    agent { dockerfile true }
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    stages {
        stage ('Maven clean install command...') {
            steps {
                bat '''
                    mvn clean install
                ''' 
            }          
         
        }
        
        stage('Post Build') {
              agent { 
              dockerfile {
  				filename 'Dockerfile'
                          }
 
                      }
 }
        }
     
    }
