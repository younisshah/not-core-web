pipeline {
    agent {
        docker {
            image 'nikolaik/python-nodejs:python3.11-nodejs19'
        }
    }

    environment {
        PREVIOUS_SUCCESSFUL_COMMIT = "${env.GIT_PREVIOUS_SUCCESSFUL_COMMIT}"
    }

    stages {

        stage("check-python") {
            steps {
                sh 'python --version'
            }
        }

        stage("affected") {
            steps {
                echo "Affected packages..."
                sh 'chmod +x print_affected.sh'
                sh 'sh print_affected.sh'
            }
        }

        stage("build") {
            steps {
                echo "Building..."
                sh 'chmod +x build.sh'
                sh 'sh build.sh'
            }
        }
    }
}
