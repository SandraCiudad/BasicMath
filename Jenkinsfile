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
                sh 'xsltproc -o junitTestBasicMathResults.xml cpp2junit.xslt cppTestBasicMathResults.xml';
            }
        }
        stage('Publish test results') {
            steps {
                junit 'junitTestBasicMathResults.xml'
            }
        } 
    }
}