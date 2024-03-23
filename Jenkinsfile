pipeline {
    agent any 
    stages {
        stage('Build container') {
            steps {
                sh 'docker build . -t portfolio' 
            }
        }
        stage('Run container') {
            agent {
                docker {
                    image 'portfolio'
                    reuseNode true
                }
            }
            steps {
                sh 'npm start' 
            }
        }
    }
}
