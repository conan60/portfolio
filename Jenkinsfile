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
                sh 'docker stop portfolio || true'
                sh 'docker run -d -p 80:3000 --name portfolio portfolio' 
            }
        }
    }
}
