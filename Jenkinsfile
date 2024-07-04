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
                 sh'docker run -dp 81:80 --name test httpd'
                sh 'rm -rf test:/usr/local/apache2/htdocs/index.html'
                sh 'docker mkdir -p test:/usr/local/apache2/htdocs '
               sh 'docker cp index.html test:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 test:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
