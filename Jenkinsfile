pipeline {
    agent any
    stages {
      //  stage('Clone Repository') {
           // steps {
             //   git branch: 'master', url: 'https://github.com/shubhangi-zanzane/repo1.git'
           // }
      //  }
        stage('Setup Docker') {
            steps {
                 git branch: 'master', url: 'https://github.com/shubhangi-zanzane/repo1.git'
                sh 'docker system prune -a -f'
                sh 'docker run -itdp 90:80 --name test1 httpd'
                sh 'docker exec test1 rm -rf /usr/local/apache2/htdocs/index.html'
                sh 'docker exec test1 mkdir -p /usr/local/apache2/htdocs'
                sh 'docker cp index.html test1:/usr/local/apache2/htdocs/'
                sh 'docker exec test1 chmod -R 777 /usr/local/apache2/htdocs/index.html'
            }
        }
         stage('Setup Docker') {
            steps {
                 git branch: '2024-Q1', url: 'https://github.com/shubhangi-zanzane/Repo-2.git'
                sh 'docker system prune -a -f'
                sh 'docker run -itdp 81:80 --name test2 httpd'
                sh 'docker exec test2 rm -rf /usr/local/apache2/htdocs/index.html'
                sh 'docker exec test2 mkdir -p /usr/local/apache2/htdocs'
                sh 'docker cp index.html test2:/usr/local/apache2/htdocs/'
                sh 'docker exec test2 chmod -R 777 /usr/local/apache2/htdocs/index.html'
            }
        }
         stage('Setup Docker') {
            steps {
                 git branch: '2024-Q2', url: 'https://github.com/shubhangi-zanzane/Repo-3.git'
                sh 'docker system prune -a -f'
                sh 'docker run -itdp 82:80 --name test3 httpd'
                sh 'docker exec test3 rm -rf /usr/local/apache2/htdocs/index.html'
                sh 'docker exec test3 mkdir -p /usr/local/apache2/htdocs'
                sh 'docker cp index.html test3:/usr/local/apache2/htdocs/'
                sh 'docker exec test3 chmod -R 777 /usr/local/apache2/htdocs/index.html'
            }
        }
    }
}
