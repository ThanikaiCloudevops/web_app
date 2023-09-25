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



