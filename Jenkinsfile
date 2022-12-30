pipeline {
    agent any 
    stages {
        stage('Git Checkout') { 
            steps {
                 sh 'git clone https://github.com/LohanYugue/Coodesh-Challenge.git'
                 stash includes: '*', name: 'git'
            }
        }
        stage('Build') { 
            steps {
                unstash 'git'
                sh 'npm run build'
            }
        }
        stage('Test') { 
            steps {
                echo 'Test'
            }
        }
        stage('Deploy') { 
            steps {
                sh 'aws s3 sync . s3://teste-lohan/'
            }
        }
    }
}