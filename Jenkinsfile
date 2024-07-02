pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shubhangi-zanzane/repo1.git'
            }
        }
        stage('Build') {
            steps {
              sh 'echo "Building..."'
                          }
        }
    }
}

