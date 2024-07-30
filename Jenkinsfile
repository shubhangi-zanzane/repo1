pipeline{
    agent{
        label{
        label "built-in"
        customWorkspace "/mnt"   
        }
    }
    stages{
        stage('node'){
            steps{
                sh 'sudo touch file1'
            }
        }
    }
}
