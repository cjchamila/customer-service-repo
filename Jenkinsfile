pipeline {
    agent any
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    stages {
        stage ('Compiling stage...') {
            steps {
                bat '''
                    mvn compile
                ''' 
            }
        }

        stage ('Testing stage...') {
            steps {
                bat '''
                    mvn test
                ''' 
            }
        }
        
         stage ('Packaging stage...') {
            steps {
                bat '''
                    mvn package
                ''' 
            }
        }
        
         stage ('Installing stage...') {
            steps {
                bat '''
                    mvn install
                ''' 
            }
        }
    }
}