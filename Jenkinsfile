pipeline {
	agent any
	tools {
		jdk 'java-17'
	}
	stages {
		
		stage('Compile') {
			steps {
				checkout scm
				sh './mvnw clean compile'
			}
		}
		
		stage('Run tests') {
			steps {
				sh './mvnw test'
			}
		}
		
		stage('Package Docker Image') {
			steps {
				script {
					def version = sh(script: './mvnw help:evaluate -Dexpression=project.version -q -DforceStdout', returnStdout: true).trim()
					sh './mvnw package -DskipTests'
					sh "docker build --build-arg APP_VERSION=${version} -t bnasslahsen/spring-petclinic:${version} ."
				}
			}
		}
		
	}
}