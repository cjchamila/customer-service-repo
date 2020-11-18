pipeline {
    agent none
    stages {
        stage('do everything in docker') {
            agent {
                dockerfile {
                    filename 'Dockerfile'
                   
                }
            }
            stages {
                stage('stuff in docker') {
                    steps {
                         ehco 'more stuff..'
                    }
                stage('more stuff in docker') {
                    steps {
                           ehco 'more stuff..'
                    }
                }
            }
        }
        stage('stuff not in docker') {
            steps {
                 ehco 'more stuff..'
            }
        }
        stage('more stuff not in docker') {
            steps {
                ehco 'more stuff..'
            }
        }
    }
    post {
        always {
            echo 'always run...'
        }
    }
}