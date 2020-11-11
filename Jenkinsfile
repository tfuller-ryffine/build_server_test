pipeline {
    // agent any
    agent { docker { image 'python:3.8.6' } }
    // environment {
    //     AWS_ACCESS_KEY_ID     = credentials('AKIAQ22XKPXHJZ7RPE6B')
    //     AWS_SECRET_ACCESS_KEY = credentials('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')
    // }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh('./test.sh')
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
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