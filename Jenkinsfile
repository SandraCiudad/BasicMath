pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'make';
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Finish') {
            steps {
                echo 'FINISHING...'
            }
        }
    }
}