pipeline {
    agent any
    stages {
        stage('git') {
            steps {
                git branch: 'master', url: 'https://github.com/shubhangi-zanzane/repo1.git'
            }
        }
        stage('install') {
            steps {
                sh 'docker stop server || true'
                sh 'docker rm server || true'
                sh 'docker system prune -a -f || true'
                sh 'docker build -t my-httpd-image .'
                sh 'docker run -d -p 80:80 --name server -v $(pwd)/repo1/index.html:/usr/local/apache2/htdocs/index.html my-httpd-image'
            }
        }
    }
}
