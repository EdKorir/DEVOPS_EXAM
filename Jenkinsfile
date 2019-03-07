node {

stage('Clone Repository')
{
sh "git clone https://github.com/EdKorir/DEVOPS_EXAM.git"
}

stage('Build docker image'){

sh "sudo docker build --tag devops_exam:1.0 ."
}

stage('Docker login to hub and push the image'){
sh "sudo docker login -u 'sigwor' -p 'Phoenix9000'"
sh "sudo docker tag devops_exam sigwor/devops_exam:1.0"
sh "sudo docker push sigwor/devops_exam:1.0"
}

stage('Run') {
sh "sudo docker container run  devops_exam:1.0"
}

}
