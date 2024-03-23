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
                echo 'docker run -d -p 3000:80 portfolio' 
            }
        }
    }
}
