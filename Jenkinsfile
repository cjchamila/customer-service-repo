pipeline {
    agent any
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    
   
    stages {
    
        stage ('Maven clean install command...') {
     agent {
    docker {
        image 'maven:3-alpine'
        label 'my-defined-label'
        args  '-v /tmp:/tmp' 
    }
}
          
            steps {
                bat '''
                    mvn clean install
                ''' 
            }          
         
        }
        
        stage('Post Build') {
      
        steps{
            echo 'In Post build stage...'
            }
                      
 }
        }
     
    }
