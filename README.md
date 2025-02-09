# simplehello-jenkins
Simple jenkins docker automation

Validate 
 
 ![image](https://github.com/user-attachments/assets/4231275b-7d66-47b0-a091-0aa7f97eeffc)

![image](https://github.com/user-attachments/assets/bb3ce136-340f-4339-9839-353a4c4ca489)


Commands step by step and logs in docker desktop, docker hub, K8
1.	Used Pipeline syntax
checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vaddiraghava123/simplehello-jenkins.git']])
 bat "mvn clean install"

2.	bat "docker build -t vaddiraghava123/spring-hello-integration."
3.	bat 'docker login -u vaddiraghava123@gmail.com -p ******'
4.	  bat 'docker push vaddiraghava123/spring-hello-integration:latest'
5.	 // kubernetesDeploy (configs: 'deploymentservice.yaml',kubeconfigId: 'k8sconfigpwd')  - Through K8 deployment plugin [ Not used ]
6.	  bat 'Kubectl run spring-hello-integration  --image=vaddiraghava123/spring-hello-integration:latest –port=8081'                    
7.	 bat 'kubectl expose pod spring-hello-integration --name=spring-hello-integrationsv --port=8081'

Verify the image in docker hub

In service of deploymentservice.yml file, make sure "type": "NodePort"
Here creates a new repository of image name
https://hub.docker.com/
 


