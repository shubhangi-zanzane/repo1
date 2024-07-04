pipeline {
agent any
    stages{
    stage('git')
        {
            steps{
git branch:'master',url:'https://github.com/shubhangi-zanzane/repo1.git'
    
            }
        }
        stage('httpd')
        {
            steps{
sh'yum install httpd'
            sh'service httpd start'
            sh'cp index.html /var/www/html'
            sh'chmod -R 777 /var/www/html' 
            
        }
        }
        
    }
    
}
