pipeline {
    agent any 
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
        //         sh 'aws s3 sync build s3://calculator-coodesh.com/'
        //         }
        //     }
        // }
        stage('Deploy') { 
            steps {
              sh 'aws s3 sync build s3://calculator-coodesh.com/'
            }
        }
    }
}

${bucket_name}
"${bucket_name}"
$bucket_name
"$bucket_name"