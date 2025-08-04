# ☁ Three-Tier Web Application Deployment using Terraform, Kubernetes, and GitHub Actions

This project demonstrates the end-to-end deployment of a scalable three-tier web application using Infrastructure as Code (Terraform), containerization (Docker), orchestration (Kubernetes on AWS EKS), and CI/CD automation (GitHub Actions).

---

 ## Tech Stack Used
	•	Frontend: React
	•	Backend: Node.js + Express
	•	Containerization: Docker
	•	CI/CD: GitHub Actions
	•	Orchestration: Kubernetes (EKS)
	•	Infra as Code: Terraform
	•	Cloud Provider: AWS

⸻

## Repository Structure
    three-tier-app/
    │
    ├── terraform/              # Infrastructure provisioning using Terraform
    ├── k8s/                    # Kubernetes manifests for frontend, backend
    ├── frontend/               # React-based frontend (Dockerized)
    ├── backend/                # Node.js backend with MongoDB connection (Dockerized)
    └── .github/workflows/      # CI/CD pipelines (build & deploy)
                          
  ⸻

## Features Implemented
	•	 CI/CD pipeline for both frontend & backend using GitHub Actions
	•	 Dockerized both services with separate Dockerfiles
	•	 Pushed Docker images to DockerHub
	•	 Created EKS cluster using Terraform
	•	 Deployed both services to EKS with LoadBalancer service
	•	 Externally accessible React UI which interacts with the backend
	

⸻

 Setup Steps

## 1️⃣ Clone this Repository
## 2️⃣ Setup AWS Credentials
	aws configure

## 3️⃣ Terraform Infra Setup
    cd terraform
    terraform init
    terraform apply
## 4️⃣ Deploy to EKS
    cd ../k8s
    kubectl apply -f .

⸻

## GitHub Actions CI/CD
	•	Automatic build & push of Docker images to DockerHub
	•	Auto-deploy to Kubernetes after every push to main branch

  See .github/workflows for pipeline config

