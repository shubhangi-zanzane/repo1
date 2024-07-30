pipeline {
    agent 
    {
        label 'built-in' 
    }
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
