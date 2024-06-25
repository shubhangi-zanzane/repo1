pipeline {

    agent any
    stages{
        stage('install')
        {
            steps{
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
            sh 'echo "hello" >> /var/www/html/index.html '
    
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
