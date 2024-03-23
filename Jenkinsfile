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
                sh 'docker run --rm -d -p 80:3000 --name portfolio portfolio' 
            }
        }
    }
}
