pipeline {
    agent{
     label{
            label 'built-in'
            customWorkspace '/mnt'
        }
    }
    stages{
        stage('1'){
            steps{
                sh 'sudo touch file3'
            }
        }

        stage('node1'){
        agent{
            node{
                label 'slave-1'
                customWorkspace '/mnt'
            }
        }
            steps{
                  sh 'sudo touch file3'
            }
        }
        
        
        }
        
    }
