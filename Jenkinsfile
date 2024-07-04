pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'master', url: 'https://github.com/shubhangi-zanzane/repo1.git'
            }
        }
        stage('Setup Docker') {
            steps {
                sh 'docker system prune -a -f'
                sh 'docker run -itdp 90:80 --name test httpd'
                sh 'docker exec test rm -rf /usr/local/apache2/htdocs/index.html'
                sh 'docker exec test mkdir -p /usr/local/apache2/htdocs'
                sh 'docker cp index.html test:/usr/local/apache2/htdocs/'
                sh 'docker exec test chmod -R 777 /usr/local/apache2/htdocs/index.html'
            }
        }
    }
}
