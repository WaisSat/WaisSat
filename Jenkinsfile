pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Pulls the latest code from your GitHub main branch
                git branch: 'main', url: 'https://github.com/WaisSat/WaisSat.git'
            }
        }

        stage('Security Audit') {
            steps {
                script {
                    // Makes the script executable and runs it
                    sh 'chmod +x verify_audit.sh'
                    sh './verify_audit.sh'
                }
            }
        }
    }

    post {
        success {
            echo '✅ Audit Passed: Production integrity is verified.'
        }
        failure {
            echo '❌ Audit Failed: Critical production files are missing or tampered with!'
        }
    }
}
