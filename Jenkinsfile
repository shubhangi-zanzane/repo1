pipeline {
    agent any
    stages{
        stage('run job')
        {
            steps{
                dir ('/mnt'){
                    sh 'sudo touch file2'
                }
            }
        }
        
    }
}
