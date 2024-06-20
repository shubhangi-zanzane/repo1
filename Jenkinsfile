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
           git 'https://github.com/shubhangi-zanzane/project1.git'     
          sh 'rm -rf /var/www/html/index.html'
                sh 'yum install httpd -y'
          
               sh 'service httpd start'
           
            sh 'cp index.html /var/www/html/'
    
            sh 'chmod -R 777 /var/www/html/index.html'
        }
    }

    }
}

