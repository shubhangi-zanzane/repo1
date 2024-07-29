pipeline{
    agent{
        label 'built-in'
    }
    stages{
        stage('parrallel-stages'){
            parallel{
                stage('stage-1'){
                    steps{
                        echo "hello world"
                    }
                }
                stage('stage-2'){
                    steps{
                        echo "stage -2"
                    }
                }
            }
        }
    }
}
