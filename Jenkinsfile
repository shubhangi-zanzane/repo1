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
                 sh'docker run -itdp 90:80 --name test httpd bash'
                sh 'rm -rf test:/usr/local/apache2/htdocs/index.html'
                sh 'mkdir -p test:/usr/local/apache2/htdocs '
               sh 'docker cp index.html test:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 test:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
