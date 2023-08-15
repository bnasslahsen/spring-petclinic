pipeline {
	agent any
	tools {
		jdk 'java-17'
	}
	stages {
		stage('Checkout') {
			steps {
			checkout scm
		}
		
		stage('Clean') {
			steps {
				sh './mvnw clean'
			}
		}
		
		stage('Compile') {
			steps {
				sh './mvnw compile'
			}
		}
		
		stage('Run tests') {
			steps {
				sh './mvnw test'
			}
		}
		
		stage('Build Jar') {
			steps {
				sh './mvnw package -DskipTests'
			}
		}
		
		stage('Package Docker Image') {
			steps {
				script {
					def version = sh(script: './mvnw help:evaluate -Dexpression=project.version -q -DforceStdout', returnStdout: true).trim()
					sh "docker build --build-arg APP_VERSION=${version} -t spring-petclinic:${version} ."
				}
			}
		}
	}
}