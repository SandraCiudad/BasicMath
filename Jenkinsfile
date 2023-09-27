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
                // Checkout
                git branch: 'master',url: 'https://github.com/devops81/HTMLPublisher.git&#8217';

                // install required bundles
                sh 'bundle install'

                // build and run tests with coverage
                sh 'bundle exec rake build spec'

                // Archive the built artifacts
                archive (includes: 'pkg/*.gem')

                publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: false, reportDir: 'coverage', reportFiles: 'index.html', reportName: 'HTML Report', reportTitles: 'Coverage Report'])
            }
        }
    }
}