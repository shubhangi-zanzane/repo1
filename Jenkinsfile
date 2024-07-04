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
                sh'docker stop server'
                sh'doker rm server'
 sh 'docker run -itdp 80:80 --name server httpd bash'
                   sh 'cp index.html server:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 server:/usr/local/apache2/htdocs/index.html'
            
        }
        }
        
    }
    
}
