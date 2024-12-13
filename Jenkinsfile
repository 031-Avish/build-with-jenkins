@Library("shared-library") _
pipeline {
    agent { label 'main' }
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('id')  
        AWS_SECRET_ACCESS_KEY = credentials('key')
        AWS_SESSION_TOKEN = credentials('token')
        ecrRepository = '853973692277.dkr.ecr.us-east-1.amazonaws.com/avish/jenkins-task'
        AWS_REGION = 'us-east-1'
        imageName = 'avish/jenkins-task'
        tag = "${BUILD_NUMBER}"
    }
    stages {
        stage('Hello') {
            steps {
                sh '''
                sudo apt-get update
                sudo apt-get install -y awscli
                
                aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ecrRepository}
                '''
                
                
                helloWorld()
            }
        }
    }
}
