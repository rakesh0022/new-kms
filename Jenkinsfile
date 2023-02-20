pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'echo "Building..."'
                sh './gradlew build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Testing..."'
                sh './gradlew test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying..."'
                sh './gradlew deploy'
            }
        }
    }
}
