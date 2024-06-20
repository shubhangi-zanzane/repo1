pipeline {
    agent any
 
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shubhangi-zanzane/project1.git'
            }
        }
        stage('Clean Workspace') 
        {
            steps{
          sh 'rm -rf /var/www/html/index.html'
                sh 'yum install httpd -y'
          
               sh 'service httpd start'
           
            sh 'echo "This is my first job using Jenkins Pipeline." >> /var/www/html/index.html '
    
            sh 'chmod -R 777 /var/www/html/index.html'
        }
    }

    }
}

