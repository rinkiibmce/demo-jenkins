pipeline {
    agent any
    tools {
        nodejs 'nodejs-18' // match the tool name from earlier
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/sample-nodejs-project.git' // replace with your repo
            }
        }
        stage('Install dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build' // if your project has a build step
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy steps here (e.g., Docker build & push, SCP to server, etc.)'
                // Add your real deployment commands
            }
        }
    }
}
