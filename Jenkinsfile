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
                sh 'make check || true'
                junit 'junitTestBasicMathResults.xml'
            }
        } 
    }
}