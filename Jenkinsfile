pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Info systeme') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Execution') {
            steps {
                sh 'chmod +x scripts/env_test.sh'
                sh './scripts/env_test.sh'
            }
        }

        stage('Fin') {
            steps {
                echo 'OK'
            }
        }
    }
}
