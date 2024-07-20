pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "test-image"
        RDS_ENDPOINT = "database-test.cjaum606857y.ap-south-1.rds.amazonaws.com"
        DB_NAME = "database-test"
        DB_USER = "admin"
        DB_PASSWORD = "admin1234"
        AWS_REGION = "ap-south-1a"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/shubhangi-zanzane/repo1.git'
            }
        }

        stage('Build WAR') {
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    archiveArtifacts artifacts: 'target/LoginWebApp.war', allowEmptyArchive: true
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${DOCKER_IMAGE}:${env.BUILD_ID}", '.')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.withRun("${DOCKER_IMAGE}:${env.BUILD_ID}", "-e DB_HOST=${RDS_ENDPOINT} -e DB_NAME=${DB_NAME} -e DB_USER=${DB_USER} -e DB_PASSWORD=${DB_PASSWORD} -p 8080:8080") { c ->
                        sh 'echo "Docker container is running"'
                    }
                }
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}





