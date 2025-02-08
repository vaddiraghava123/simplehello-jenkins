pipeline {
    agent any
    tools {
        maven 'maven-env'
    }
    stages {
        stage('Build maven') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/vaddiraghava123/simplehello-jenkins.git']])
                bat "mvn clean install"
                
            }
        }
        stage('Build docker image') {
            steps {
                script{
                    bat "docker build -t vaddiraghava123/spring-hello-integration ."
                    }
                }
        }
        
        
        stage('Push image to docker hub') {
            steps {
                script {
                    
                      bat 'docker login -u vaddiraghava123@gmail.com -p Raghava2025*' 
                      
                       
					}
                }
            }
            
        stage('push image') {
        steps {
                script {
                      
                       bat 'docker push vaddiraghava123/spring-hello-integration:latest'
					}
                }
        }
    }
    
    }