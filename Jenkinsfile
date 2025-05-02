pipeline {
    agent any
    stages {
        stage('Nettoyage du workspace') {
            steps {
                cleanWs()
            }
        }
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("myapp-image", ".")
                }
            }
        }
    }
}
