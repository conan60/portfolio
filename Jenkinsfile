pipeline {
    agent any 
    stages {
        stage('Build container') {
            steps {
                sh 'docker image prune -a'
                sh 'docker build . -t portfolio' 
            }
        }
        stage('Run container') {
            steps {
                sh 'docker stop portfolio'
                sh 'docker rm portfolio'
                sh 'docker run -d -p 80:3000 --name portfolio portfolio' 
            }
        }
    }
}
