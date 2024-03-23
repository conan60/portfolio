pipeline {
    agent any 
    stages {
        stage('Build container') {
            steps {
                sh 'docker build -t addressbook .' 
            }
        }
        stage('Run container') {
            steps {
                echo 'docker run -it -p 80:3000 addressbook' 
            }
        }
    }
}
