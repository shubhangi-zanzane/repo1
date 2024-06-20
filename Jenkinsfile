pipeline 

{
  agent any
  stages{
    stage("git checkout")
    {
      steps{
        git https://github.com/shubhangi-zanzane/repo1.git
      }
    }
    stage("indexfile run")
    {
      steps
      {
      yum install httpd -y
      service httpd start
        cp index.html /var/www/html
        chmod -R 777 /var/www/html/index.html
      }
    }
  }
}

