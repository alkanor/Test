pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'env' 
                archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true 
            }
        }
    }
}