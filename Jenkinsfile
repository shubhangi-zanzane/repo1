pipeline{
    agent{
        label{
        label "slave-1"
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
