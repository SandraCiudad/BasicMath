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
        stage('Publish test results') {
            steps {
                junit 'cppTestBasicMathResults.xml'
            }
        } 
    }
}