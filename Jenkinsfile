pipeline {
    agent any
    tools { 
        maven 'Maven-3.6.3' 
        jdk 'JDK8' 
    }
    stages {
        stage ('Initialize') {
            steps {
                bat '''
                    echo "PATH =" ${PATH}
                    echo "M2_HOME =" ${M2_HOME}
                ''' 
            }
        }

        stage ('Build') {
            steps {
                echo 'This is a minimal pipeline.'
            }
        }
    }
}