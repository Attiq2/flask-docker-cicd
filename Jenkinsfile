pipeline {
    agent any

    environment {
        DOCKERHUB_USER = credentials('docker-username')
        DOCKERHUB_PASS = credentials('docker-password')
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Attiq2/flask-docker-cicd'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t flask-cicd .'
            }
        }

        stage('Push to Docker Hub') {
            steps {
                sh '''
                    echo "$DOCKERHUB_PASS" | docker login -u "$DOCKERHUB_USER" --password-stdin
                    docker tag flask-cicd ${DOCKERHUB_USER}/flask-cicd:jenkins
                    docker push ${DOCKERHUB_USER}/flask-cicd:jenkins
                '''
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh '''
                    kubectl apply -f deployment.yaml
                    kubectl apply -f service.yaml
                '''
            }
        }
    }
}

