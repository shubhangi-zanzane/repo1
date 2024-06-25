pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shubhangi-zanzane/project.git'
            }
        }
        stage('Build') {
            steps {
              sh 'echo "Building..."'
                          }
        }
    }
}
