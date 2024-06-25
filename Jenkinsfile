pipeline {

    agent any
    stages{
        stage('git')
        {
            steps
            {
            git branch:'master',url:'https://github.com/shubhangi-zanzane/repo1.git'    
            }
        }
        stage('install')
        {
            steps{
               sh 'rm -rf /var/www/html/index.html'
                sh 'yum install httpd -y'
               sh 'service httpd start'
               sh 'cp index.html /var/www/html/index.html '
              sh 'chmod -R 777 /var/www/html/index.html'
        }
    }
    }
    
}
