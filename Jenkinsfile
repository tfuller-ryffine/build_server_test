pipeline {
    // agent any
    // agent { dockerfile true }
    agent { docker { image 'python:3.8.6' } }
    stages {
        stage('build') {
            steps {
                // sh 'python --version'
                sh 'ls -al'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                // sh('./test.sh')
                // sh 'python -m unittest -v'
                // sh 'behave'
                // sh 'coverage run -m unittest discover'
                // sh 'coverage report'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh('./deploy.sh')
            }
        }
    }
    // stages {
    //     stage('Example stage 1') {
    //         steps {
    //             echo 'Example stage 1..'
    //             sh('./test.sh')
    //         }
    //     }
    //     stage('Example stage 2') {
    //         steps {
    //             echo 'Example stage 2..'
    //         }
    //     }
    // }
}