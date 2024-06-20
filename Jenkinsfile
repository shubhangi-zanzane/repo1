pipeline {
    agent any
 environment {
        GIT_REPO = 'https://github.com/shubhangi-zanzane/repo1.git'
        BRANCH = 'master'
        HTTPD_DIR = '/var/www/html'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: "master", url: "https://github.com/shubhangi-zanzane/repo1.git"
            }
        }
        stage('Clean Workspace') 
        {
            steps{
                
          sh 'rm -rf /var/www/html/index.html'
                sh 'yum install httpd -y'
          
               sh 'service httpd start'
           
            sh 'cp index.html /var/www/html/'
    
            sh 'chmod -R 777 /var/www/html/index.html'
        }
        }
 }
}


 
    
    }
}

