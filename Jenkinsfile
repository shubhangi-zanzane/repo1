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
                
               sh 'cp index.html test:/usr/local/apache2/htdocs '
                sh 'chmod -R 777 test:/usr/local/apache2/htdocs/index.html'
                
        }
    }
    }
    
}
