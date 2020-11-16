pipeline {
    agent any 
    stages {
        stage('Compiling stage.........') { 
       
           steps {
               withMaven(maven : 'Maven-3.6.3') {
				bat'mvn clean compile'
            }
        }
        } 
        stage('Testing stage...') {  
        
		steps {
			withMaven(maven : 'Maven-3.6.3') {
			bat'mvn test'
			}
			}
               
            }
        
	stage('Packaging stage...') {
	
	steps{
	    withMaven(maven : 'Maven-3.6.3') {
			bat'mvn install'
           } 
        }
            }
            
}
}

