pipeline{
    agent{
        label{
        label 'slave-1'
        workSpace '/mnt/velocity'   
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
