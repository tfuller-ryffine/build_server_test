pipeline {
    agent any
    // agent {
    //     // Define agent details here
    // }
    // environment {
    //     AWS_ACCESS_KEY_ID     = credentials('AKIAQ22XKPXHJZ7RPE6B')
    //     AWS_SECRET_ACCESS_KEY = credentials('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')
    // }
    // stages {
    //     stage('Build') {
    //         steps {
    //             echo 'Building..'
    //         }
    //     }
    //     stage('Test') {
    //         steps {
    //             echo 'Testing..'
    //         }
    //     }
    //     stage('Deploy') {
    //         steps {
    //             echo 'Deploying....'
    //         }
    //     }
    // }
    stages {
        stage('Example stage 1') {
            steps {
                echo 'Example stage 1..'
                sh('./test.sh')
            }
        }
        stage('Example stage 2') {
            steps {
                echo 'Example stage 2..'
            }
        }
    }
}