pipeline {

    agent any
    stages{
        stage('git')
        {
            steps
            {
            git branch:'master', url:'https://github.com/shubhangi-zanzane/repo1.git'    
            }
        }
        stage('install')
        {
            steps{
                 sh'docker run -dp 90:80 --name test1 httpd'
                sh 'rm -rf test1:/usr/local/apache2/htdocs/index.html'
                sh 'mkdir -p test1:/usr/local/apache2/htdocs '
               sh 'cp index.html test1:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 test1:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
