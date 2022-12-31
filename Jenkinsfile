pipeline {
    agent any 
    environment {
        BUCKET_NAME = 'calculator-coodesh.com'
    }

    stages {
        stage('Git Checkout') { 
            steps {
                 sh 'git clone https://github.com/ahfarmer/calculator.git'
                 stash includes: '*', name: 'git'
            }
        }
        stage('Create bucket') { 
            steps {
              sh 'terraform init && terraform plan && terraform apply'
            }
        }
        // stage('Build') { 
        //     steps {
        //       dir("calculator") {
        //         unstash 'git'
        //         sh 'pwd'
        //         sh 'npm install && npm run build'
        //       }
        //     }
        // }
        // stage('Deploy') { 
        //     steps {
        //       dir("calculator") {
        //         sh 'aws s3 sync build s3://${BUCKET_NAME}/'
        //         }
        //     }
        // }
        stage('Deploy') { 
            steps {
              sh "aws s3 sync build s3://${BUCKET_NAME}/"
              echo "Bucket Endpoint: http://${BUCKET_NAME}.s3-website-us-east-1.amazonaws.com"
              echo "<a href='http://${BUCKET_NAME}.s3-website-us-east-1.amazonaws.com>'</a>"
            }
        }
    }
}