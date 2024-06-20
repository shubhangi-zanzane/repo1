pipeline {
    agent any
    
    environment {
        GIT_REPO = '
 environment {
        GIT_REPO = 'https://github.com/shubhangi-zanzane/repo1.git'
        BRANCH = 'master'
        HTTPD_DIR = '/var/www/html'
    }
'
        BRANCH = 'master'
        HTTPD_DIR = '/var/www/html'
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout the repository
                git branch: "master", url: "https://github.com/shubhangi-zanzane/repo1.git"
            }
        }
        
        stage('Deploy to HTTPD') {
            steps {
                script {

                    // Copy the index.html to the httpd directory
                    sh 'cp index.html ${HTTPD_DIR}'
                }
            }
        }
        
        stage('Restart HTTPD') {
            steps {
                script {
                    // Restart the httpd service
                    sh 'sudo systemctl restart httpd'
                }
            }
        }
    }
    
    post {
        always {
            // Cleanup if necessary
        }
        success {
            echo 'Deployment succeeded!'
        }
        failure {
            echo 'Deployment failed!'
        }
    }
}
