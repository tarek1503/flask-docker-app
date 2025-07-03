🐳 Flask App with Docker & Kubernetes (KinD)

This project is a minimal **Flask web app** containerized with **Docker**, deployed locally using **Kubernetes** via **KinD (Kubernetes in Docker)**. Ideal for testing DevOps workflows in a local development environment.



📦 Tech Stack

- **Flask** – Lightweight Python web framework  
- **Docker** – Containerization  
- **Docker Hub** – Hosting container image  
- **KinD** – Local Kubernetes cluster (runs inside Docker)  
- **kubectl** – Kubernetes command-line tool  
- **GitHub** – Version control and optional CI/CD  



🚀 Quick Start

### 1. Clone the repo

```bash
git clone https://github.com/tarek1503/flask-docker-app.git
cd flask-docker-app
```



### 2. Build and Push Docker Image

> Make sure Docker is installed and running

```bash
docker build -t tarekkkk/flask-docker-app:latest .
docker push tarekkkk/flask-docker-app:latest
```



### 3. Create Kubernetes Cluster (KinD)

> Install KinD: [https://kind.sigs.k8s.io/](https://kind.sigs.k8s.io/)

```bash
kind create cluster --name dev-cluster
```



### 4. Deploy to Kubernetes

```bash
kubectl apply -f k8s-deployment.yaml
```

Check status:

```bash
kubectl get pods
kubectl get services
```



### 5. Access the App

Use port-forwarding to access the app in your browser:

```bash
kubectl port-forward deployment/flask-app 5000:5000
```

Then visit: [http://localhost:5000](http://localhost:5000)



🗂 Project Structure

```
docker-pyhton-app/
├── app.py                    # Flask app
├── Dockerfile                # Build instructions
├── k8s-deployment.yaml       # Kubernetes manifest
├── requirements.txt          # Python dependencies
└── .github/workflows/        # (Optional) GitHub Actions CI/CD
```



🛠 Optional: GitHub Actions CI/CD

You can add `.github/workflows/deploy.yaml` to automate:

- Docker image build
- Push to Docker Hub
- Auto deployment to cluster (e.g., via KubeSail or remote server)



🧼 To Delete the Cluster

```bash
kind delete cluster --name dev-cluster
```
