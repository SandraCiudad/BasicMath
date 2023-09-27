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
                // run tests with coverage
                sh 'bundle exec rake spec'
            }

            post {
                success {
                // publish html
                publishHTML target: [
                    allowMissing: false,
                    alwaysLinkToLastBuild: false,
                    keepAll: true,
                    reportDir: 'coverage',
                    reportFiles: 'index.html',
                    reportName: 'RCov Report'
                    ]
                }
            }
        }
    }
}