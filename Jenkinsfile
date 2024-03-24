pipeline {
    agent any 
    stages {
        stage('Build container') {
            steps {
                sh 'docker build . -t portfolio' 
            }
        }
        stage('Run container') {
            steps {
                sh 'docker restart portfolio' 
            }
        }
    }
}
