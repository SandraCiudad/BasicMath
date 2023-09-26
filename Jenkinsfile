pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make';
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
        post {
            always {
                junit '**/reports/junit/*.xml'
            }
        } 
    }
}