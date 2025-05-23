# Dockerized Python App with Alpine and Ansible

This project demonstrates how to containerize a simple Python application using Alpine Linux, manage the process with Ansible, and publish the image to Docker Hub.

## Project Overview

- A simple Python application running in an Alpine-based Docker container
- Automated Docker image build and container deployment using Ansible
- Docker image published to Docker Hub
- Infrastructure-as-Code approach for reproducible deployments

## Prerequisites

Before using this project, ensure you have the following installed:

- Docker
- Ansible
- Python 3
- Docker Hub account (for pushing images)

## Project Structure
.
📂 project-directory/ ├── 📜 app.py  # Simple Python application ├── 📜 Dockerfile  # Defines the Docker image based on Alpine ├── 📜 requirements.txt  # Dependencies for the Python app ├── 📜 ansible-playbook.yml  # Automates the build, run, and push process ├── 📜 README.md  # You are here



## How It Works

1. **Python Application**: A simple Flask/Python app (modify as needed)
2. **Dockerization**: The app is containerized using Alpine Linux for a lightweight image
3. **Ansible Automation**: The playbook handles:
   - Building the Docker image
   - Running the container
   - Pushing the image to Docker Hub

## Getting Started

### 1. Clone the Repository


git clone https://github.com/your-username/your-repo.git
cd your-repo

### 2. Build and Run Manually (Optional)

docker build -t python-alpine-app .
docker run -d -p 5000:5000 --name python-app python-alpine-app

### 3. Using Ansible Playbook
Edit the ansible/inventory file to add your target hosts

Update the ansible/playbook.yml with your Docker Hub credentials

Run the playbook:
ansible-playbook -i ansible/inventory ansible/playbook.yml

### 4. Access the Application
After successful deployment, access the application at:
http://localhost:5000 (or your server's IP address)

**Configuration**

Modify app/main.py to change the Python application

Update Dockerfile for different base images or build steps

Edit ansible/playbook.yml to customize the automation workflow

**Docker Hub Integration**
The playbook includes tasks to push the image to Docker Hub. Ensure you:

Have a Docker Hub account

Are logged in to Docker on your machine (docker login)

Have updated the image name in the playbook to match your repository


**Contributing**
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


### Customization Tips:

1. Replace `python-alpine-app` with your actual image name
2. Update the port numbers if your app uses different ports
3. Add specific instructions about your Python application's functionality
4. Include any environment variables that need to be set
5. Add badges (build status, Docker pulls, etc.) if applicable
6. Include a screenshot if your app has a UI
