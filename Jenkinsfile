#!groovy
pipeline {
	agent any
     environment {
        dotnet = 'C:\\Program Files\\dotnet\\dotnet.exe'
    }
    stages {
        stage('Checkout Stage') {
            steps {
                git credentialsId: '2920d9ab-29fe-4d97-9927-e5cc2be89bf0', url: 'https://github.com/ParasPandey/JenkinsDemo.git', branch: 'master'
            }
        }
        stage('Build Stage') {
            steps {
                bat 'C:\\Users\\paraspandey\\source\\repos\\JenkinsWebApplicationDemo\\JenkinsWebApplicationDemo.sln --configuration Release'
            }
        }
        stage('Test Stage') {
            steps {
                bat 'C:\\Users\\paraspandey\\source\\repos\\JenkinsWebApplicationDemo\\TestProject\\TestProject.csproj'
            }
        }
        stage('Docker Build') {
            steps {
      	        sh 'sudo docker build -t jenkinsimage:latest .'
            }
        }
    }

}