## CI/CD Pipeline 

This project demonstrates the complete Continuous Integration/Continuous Deployment (CI/CD) pipeline implemented in an AWS environment using EC2 instances within a Virtual Private Cloud (VPC). It leverages a stack of DevOps tools including Jenkins, Maven, Ansible, Docker, and Kubernetes (EKS) to automate the building, testing, and deployment processes, enabling seamless and efficient delivery of web applications


```bash
  git clone https://github.com/ThanikaiCloudevops/web_app.git
```
# Prerequisites

AWS Console , Good knowledge on Devops tools: Jenkins , Docker , Ansible , Kubernetes(EKS).

## Steps 

This project utilizes Amazon Web Services (AWS) to host a multi-server infrastructure: one EC2 instance hosts Jenkins and Maven for continuous integration, another EC2 instance manages Ansible and Docker for infrastructure provisioning and containerization, while a separate EC2 instance serves as the control plane for an Amazon EKS Kubernetes cluster.


In the dedicated Jenkins and Maven server, Jenkins has been installed and configured as the continuous integration and continuous deployment (CI/CD) tool, while Maven has been set up as the build automation tool

## Environment Variables

To run this project, you will need to add the following environment variables to your jenkins server 

```bash
  vi .bash_profile 
```

`M2=opt/maven/bin`

`M2_HOME =opt/maven_path`

`JAVA_HOME = java_path`



##  Steps 

* Certainly, here's a structured explanation that you can use to describe the setup and flow of your CI/CD pipeline:

**CI/CD Pipeline Overview:**

1. **Jenkins and Maven Server**:
   - On the dedicated server, we have installed and configured Jenkins as our Continuous Integration (CI) tool.
   - Maven is also set up on this server as our build automation tool.

2. **Ansible Server**:
   - The Ansible server plays a crucial role in the Continuous Deployment (CD) phase.
   - To facilitate Ansible automation, root access is granted to the Ansible server.
   - Password authentication is enabled to ensure secure connections.

3. **Jenkins Integration**:
   - In Jenkins, we've configured the "Publish over SSH" plugin to establish a connection with the Ansible server.
   - This connection allows Jenkins to trigger Ansible playbooks on the Ansible server to facilitate the CD process.

4. **CI Responsibility**:
   - Jenkins is primarily responsible for the CI part of the pipeline.
   - It automates tasks such as building, testing, and packaging applications.

5. **CD Responsibility**:
   - Ansible takes charge of the CD part of the pipeline.
   - It orchestrates the deployment process using defined playbooks.

6. **Ansible Host Configuration**:
   - To execute Ansible playbooks, we've defined the Ansible host IP in
   - This host is responsible for managing and deploying applications.
  
```bash
  vi /etc/ansible/hosts
```

7. **Docker Image Build and Push**:
   - Upon playbook execution, Ansible builds Docker images for our applications.
   - These Docker images are then pushed to Docker Hub, making them available for deployment.

8. **Kubernetes Deployment**:
   - Our Kubernetes deployment follows a declarative approach.
   - It uses the Docker images stored in Docker Hub to deploy applications to their respective pods within the Kubernetes cluster.

This setup ensures that our CI pipeline, managed by Jenkins, seamlessly hands over control to Ansible for CD, resulting in an automated and efficient software delivery process from code changes to deployment.






