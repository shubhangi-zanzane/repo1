pipeline 
{
  agent any
  stages{
    stage("git checkout")
    {
      steps{
       git 'https://github.com/shubhangi-zanzane/repo1.git'
      }
    }
    stage("indexfile run")
    {
      steps
      {
      sh 'yum install httpd -y'
      sh 'service httpd start'
        sh 'cp index.html /var/www/html'
        sh 'chmod -R 777 /var/www/html/index.html'
      }
    }
  }
}

