node {

stage('Clone Repository')
{
  checkout scm
}

stage('Build docker image'){
  sh "docker build -t korir:latest ."
}

stage('Docker login to hub and push the image'){
  sh "docker login -u 'sigwor' -p 'Phoenix8999' "
  sh "docker tag korir:latest sigwor/korir:latest"
  sh "docker push sigwor/korir:latest"
}

stage('Apply changes to the environment'){
  sh "ls -l"
}

stage('Run the docker image'){
  sh "docker container run -d sigwor/korir:latest"
}
}
