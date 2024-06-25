pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {

                sh 'rm -rf *'
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
