pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shubhangi-zanzane/project1.git'
            }
        }
        stage('Build') {
            steps {
              sh 'yum install httpd -y'
                 sh 'service httpd start'
                 sh 'cp index.html /var/www/html'
                sh 'chmod -R 777 index.html /var/www/html/index.html'
            }
        }
    }
}

