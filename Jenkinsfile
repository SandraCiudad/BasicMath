pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make || true';
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'xsltproc -o junitTestBasicMathResults.xml cpp2junit.xslt cppTestBasicMathResults.xml';
            }
        }
        stage('Finish') {
            steps {
                echo 'FINISHING...'
                
            }
        }
        stage('Publish test results') {
            steps {
                junit 'junitTestBasicMathResults.xml'
            }
        } 
    }
}