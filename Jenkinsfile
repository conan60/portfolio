pipeline {
  agent any
  stages {
    stage('Pre-cleanup') {
      steps {
        sh 'echo "Hello"'<
      }
    }
    stage('Make venv') {
      steps {
        sh 'echo "Make venv"'
      }
    }
    stage('Install dependencies') {
      steps {
        sh 'echo "install deps !"'
      }
    }
    stage('Run tests') {
      steps {
        sh 'echo "Test"'
      }
    }
  }
  post {
    failure {
      echo 'Processing failed'
    }
    success {
      echo 'Processing succeeded'
    }
  }
}