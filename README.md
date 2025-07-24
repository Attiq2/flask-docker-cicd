# Flask App CI/CD Pipeline with Jenkins, Docker, and Kubernetes

This project demonstrates a complete DevOps CI/CD pipeline to build, push, and deploy a Flask application using **Jenkins**, **Docker**, and **Kubernetes (Minikube)**.

---

## 📌 Project Overview

The Flask app is:
- Containerized using Docker.
- Pushed to Docker Hub.
- Deployed to a Kubernetes cluster via Jenkins Pipeline.
  
> CI/CD workflow is fully automated with `Jenkinsfile`.

---

## 🧰 Technologies Used

- Python & Flask
- GitHub
- Docker
- Docker Hub
- Jenkins
- Kubernetes
- Minikube
- kubectl

---

## 📂 Project Structure

.
├── app
│ ├── app.py
│ └── requirements.txt
├── Dockerfile
├── Jenkinsfile
├── k8s
│ ├── deployment.yml
│ └── service.yml

---

## ⚙️ Jenkins Pipeline Steps

1. **Clone GitHub Repository**
2. **Build Docker Image**
3. **Push Image to Docker Hub**
4. **Deploy to Kubernetes (Minikube)**

> All automated through `Jenkinsfile`

---

## 🚀 Run Manually (Optional)

###  Build Docker Image
###  Push Image to Docker Hub
###  Deploy to Kubernetes
###  Access the App
   

