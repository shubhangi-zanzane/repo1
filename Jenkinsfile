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
                
              sh 'docker run -itd --name server httpd bash'
               sh 'docker exec -it server bash'
                sh 'mkdir /usr/local/apache2/htdocs '
               sh 'cp index.html /usr/local/apache2/htdocs '
                sh 'chmod -R 777 /usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
