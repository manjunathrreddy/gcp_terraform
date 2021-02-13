pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo " This is a code to checkout"

            }
        }

        stage('Build') { 
            steps {
                echo "this is a code to build"

            }
        }

        stage ('Test') {
            steps {
                echo "This is a code to Test"

            }

        }

        stage ('Deploy') {
            steps {
                echo "This is a code to Deploy"

            }

        }

    }
        post {
        // Clean after build
        always {
            cleanWs(cleanWhenNotBuilt: false,
                    deleteDirs: true,
                    disableDeferredWipeout: true,
                    notFailBuild: true,
                    patterns: [[pattern: '.gitignore', type: 'INCLUDE'],
                               [pattern: '.propsfile', type: 'EXCLUDE']])
        }
    }



}