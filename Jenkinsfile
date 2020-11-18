pipeline {
    agent none
    tools{
    jdk JDK8
    maven Maven-3.6.3
        }
    }

    stages {
        stage('do everything in docker') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                   
                }
            }
            
    }
    post {
        always {
            echo 'always executed'
        }
    }
}