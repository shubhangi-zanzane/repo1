pipeline{
    agent any
    stages{
        stage('stage-1'){
            steps{
                echo "hello world"
            }
        }
        stage('parrallel-stages')
        {
            parallel{
            stage('stage-1'){
                steps{
                    echo "stage p 1"
                }
            }
            stage('stage-2')
            {
                steps{
                    echo "step p2"
                }
            }
        }
        }
        stage('stage-4')
        {
            steps{
                echo "step 4"
            }
        }
        stage('stage-5'){
            steps{
                echo "stage-5"
            }
        }
    
}
}
