pipeline {
    agent any

    environment {
        IMAGE_NAME = 'myapp-image'
        DEST_DIR = '/usr/share/nginx/html'
    }

    stages {
        stage('Netoye Workspace') {
            steps {
                script {
                    deleteDir() 
                }
            }
        }
        
        stage('Clone repo') {
            steps {
                git branch: 'main', url: 'https://github.com/Tarikokc/projet-Devops.git'
            }
        }

        stage('Build du docker Image') {
            steps {
                script {
                    sh 'docker build -t ${IMAGE_NAME} .'
                }
            }
        }

        stage('Run du docker Container') {
            steps {
                script {
                    sh 'docker run -d -p 8081:81 ${IMAGE_NAME}'
                }
            }
        }
    }

}
