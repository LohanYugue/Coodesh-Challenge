pipeline {
    agent any 
    stages {
        stage('Git Checkout') { 
            steps {
                 sh 'git clone https://github.com/ahfarmer/calculator.git'
                 stash includes: '*', name: 'git'
            }
        }
        stage('Build') { 
            steps {
              dir("calculator") {
                unstash 'git'
                sh 'pwd'
                sh 'npm install && npm run build'
              }
            }
        }
        stage('Test') { 
            steps {
                echo 'Test'
            }
        }
        stage('Deploy') { 
            steps {
              dir("calculator") {
                sh 'pwd'
                sh 'aws s3 sync build s3://teste-lohan/'
              }  
            }
        }
    }
}