pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'f166c148-bd26-408c-8383-ef254c65e3a9', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
                  sh 'echo $USERNAME $PASSWORD|base64'
                }
            }
        }
    }
}