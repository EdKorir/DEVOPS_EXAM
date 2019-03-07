node {

stage('Clone Repository')
{
sh "git clone https://github.com/EdKorir/DEVOPS_EXAM.git"
}

stage('Build docker image'){

sh "docker build -t devops_exam:1.0 ."
}

stage('Docker login to hub and push the image'){
sh "docker login -u 'sigwor' -p 'Phoenix9000' "
sh "docker tag devops_exam sigwor/devops_exam:1.0"
sh "docker push sigwor/devops_exam:1.0"
}

stage('Run') {
sh "docker run -d -p 8080:80/tcp  devops_exam:1.0"
}

}
