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
            steps
           {
                cleanWs()
            }
}
        stage('install')
        {
            steps
            {
                sh 'yum install httpd -y'
            }
        }
        stage('start httpd')
        {
            steps
            {
               sh 'service httpd start'
            }
        }
        
         
   stage('create index filr')
        {
            steps 
            {
            sh 'echo "This is my first job using Jenkins Pipeline." >> /var/www/html/index.html '
    
            }
        }
    stage('permission')
    {
        steps
        {
           sh 'chmod -R 777 /var/www/html/index.html'
        }
    }

    }
}

