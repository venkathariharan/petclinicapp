pipeline {
    agent {
        kubernetes {
            label 'testagent2'
            defaultContainer 'jnlp-agent'
        }
    }
    environment {
        ARTIFACTORY     = credentials('artifactory')
    }
    stages {
        stage('JAR Build') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
//            post {
//                always {
//                    junit 'target/surefire-reports/*.xml'
//                }
//            }
        }
        stage('Skaffold Build') {
            steps {
                sh "export TAGNAME=${BUILD_NUMBER}"
                sh "echo $TAGNAME"
                sh "skaffold build -p local"
            }
        }
        stage('Deploy to K8s') {
            steps {
              
                sh "echo success"
            }
        }
        stage('Functional Test') {
            steps {
                // spin up selenium chrome standalone container in same pod as jnlp-agent, in jnlp-agent clone down
                // cucumber test suite and execute
                // git url: "https://github.com/bdonelaney/automation.git"
                sh "echo success"
            }
        }
       
    }
}
