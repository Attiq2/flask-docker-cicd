pipeline {
    agent any

    environment {
        IMAGE_NAME = 'attiq1124/flask-cicd:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Attiq2/flask-docker-cicd.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'DOCKERHUB_USER', 
                    usernameVariable: 'DOCKERHUB_USER', 
                    passwordVariable: 'DOCKERHUB_PASS'
                )]) {
                    sh 'echo $DOCKERHUB_PASS | docker login -u $DOCKERHUB_USER --password-stdin'
                    sh 'docker push $IMAGE_NAME'
                }
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/deployment.yml'
                sh 'kubectl apply -f k8s/service.yml'
            }
        }
    }
}

