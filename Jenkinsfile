pipeline{
    agent{
        label{
        label 'slave-1'
        customWorkpace '/mnt/velocity'   
        }
    }
    stages{
        stage('node'){
            steps{
                sh 'sudo mkdir test'
            }
        }
    }
}
