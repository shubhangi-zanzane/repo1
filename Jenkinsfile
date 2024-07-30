pipeline{
    agent any
    stages{
        stage(stage-1){
            steps{
                echo "hello"
            }
        }

        stage('parallel'){
            parallel{
                stage('stage-2'){
                    steps{
                        echo"stage-2"
                    }
                }
                stage('stage-3'){
                    steps{
                        echo "stage-3"
                    }
                }
            }
        }
        stage('stage-4'){
        steps{
            echo "hello"
        }
        }
        
                
                
            }
    }
