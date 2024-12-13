@Library("shared-library") _
pipeline {
    agent { label 'main' }
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('id')  
        AWS_SECRET_ACCESS_KEY = credentials('key')
        AWS_SESSION_TOKEN = credentials('token')
        ECR_REPOSITORY = '853973692277.dkr.ecr.us-east-1.amazonaws.com/avish/jenkins-task'
        AWS_REGION = 'us-east-1'
    }
    stages {
        stage('Hello') {
            steps {
                sh '''
                sudo apt-get update
                sudo apt-get install -y awscli
                
                aws ecr get-login-password --region ${AWS_REGION} | docker login --username AWS --password-stdin ${ECR_REPOSITORY}
                '''
                
                
                helloWorld()
            }
        }
    }
}

