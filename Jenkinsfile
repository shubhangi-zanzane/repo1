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
                sh 'docker system prune -a -f'
                 sh'docker run -dp 90:80 --name test2 httpd'
                sh 'rm -rf test2:/usr/local/apache2/htdocs/index.html'
                sh 'mkdir -p test2:/usr/local/apache2/htdocs '
               sh 'cp index.html test2:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 test2:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
