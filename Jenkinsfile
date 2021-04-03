pipeline {
    agent any
    stages {
        stage('checkout') {
            steps {
                echo " This is a code to checkout"
 //               sh 'terraform -v'

            }
        }

        stage('Init') { 
            steps {
                echo "this is a code to build"
                sh 'cd $WORKSPACE'
                sh 'sudo -n terraform init .'
            }
        }

        stage ('Plan') {
            steps {
                sh 'terraform apply'

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
            echo "The project workspace : $WORKSPACE is cleaned up"
        }
    }



}