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
                junit 'junitTestBasicMathResults.xml'
            }
        }
        stage ('Test code coverage') {
            steps {
                publishHTML([allowMissing: false, 
                alwaysLinkToLastBuild: false, 
                keepAll: false, 
                reportDir: '/home/sandra/Escritorio/BasicMath', 
                reportFiles: 'coverage.html', 
                reportName: 'Code Coverage Report', 
                reportTitles: 'Coverage Report'])
            }
            steps {
                publishHTML([allowMissing: false, 
                alwaysLinkToLastBuild: false, 
                keepAll: false, 
                reportDir: '/home/sandra/Escritorio/BasicMath', 
                reportFiles: 'coverage.CBasicMath.cpp.html', 
                reportName: 'Class CBasicMath Report', 
                reportTitles: 'Coverage Report'])
            }
            steps {
                publishHTML([allowMissing: false, 
                alwaysLinkToLastBuild: false, 
                keepAll: false, 
                reportDir: '/home/sandra/Escritorio/BasicMath', 
                reportFiles: 'coverage.TestBasicMath.cpp.html', 
                reportName: 'Class TestBasicMath Report', 
                reportTitles: 'Coverage Report'])
            }
        }
    }
}