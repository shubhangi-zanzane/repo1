pipeline{
    agent{
        label{
        label 'slave-1'
        customWorkspace '/mnt/velocity'   
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
