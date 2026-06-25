pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Verification') {
            steps {
                sh 'pwd'
                sh 'ls -la'
            }
        }

        stage('Execution') {
            steps {
                sh 'chmod +x scripts/check.sh'
                sh './scripts/check.sh'
            }
        }

        stage('Fin') {
            steps {
                echo 'Pipeline terminé'
            }
        }
    }
}
