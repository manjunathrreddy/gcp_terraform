pipeline {
    agent any
           tools{
            terraform 'jenkins-terraform'

        } 
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
                sh 'terraform init $WORKSPACE/session01/gce'
            }
        }

        stage ('Plan') {
            steps {
                sh 'terraform  plan $WORKSPACE/session01/gce'

            }

        }

        stage ('Apply') {
            steps {
                sh 'terraform  apply --auto-approve $WORKSPACE/session01/gce'

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