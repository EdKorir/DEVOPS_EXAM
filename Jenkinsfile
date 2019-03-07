node {

stage('Clone Repository')
{
  checkout scm
}

stage('Build docker image'){
  sh "docker build -tag devops_exam:1.0 ."
}

stage('Docker login to hub and push the image'){
  sh "docker login -u 'sigwor' -p 'Phoenix9000'"
  sh "docker tag devops_exam sigwor/devops_exam:1.0"
  sh "docker push sigwor/devops_exam:1.0"
}

stage('Apply changes to the environment'){
  sh "ls -l"
}

stage('Run the docker image'){
  sh "docker container run -d sigwor/devops_exam:1.0"
}
}
