erpipeline {

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
                sh 'docker stop server'
                sh 'docker system prune -a -f'
              sh 'docker run -itdp 80:80 --name server httpd bash'
               sh 'docker exec -it server bash'
                //sh 'mkdir -p /usr/local/apache2/htdocs '
               sh 'cp index.html server:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 server:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
