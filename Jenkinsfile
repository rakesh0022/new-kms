pipeline {
  agent any
  
  environment {
    PROJECT_ID = "qwiklabs-gcp-00-e068f879d692"
    SERVICE_ACCOUNT_CREDENTIALS = credentials('google-sa')
  }
  
  parameters {
    string(name: 'GCP_COMMAND', defaultValue: '', description: 'Enter the GCP command to execute')
    string(name: 'GCP_COMMAND_ARGS', defaultValue: '', description: 'Enter the arguments for the GCP command')
  }
  
  stages {
    stage('Execute GCP Command') {
      steps {
        withCredentials([string(credentialsId: 'google-sa', variable: 'GCP_CREDS_jenkins')]) {
          withEnv(["GOOGLE_APPLICATION_CREDENTIALS=${GCP_CREDS}"]) {
            sh "gcloud config set project ${env.PROJECT_ID}"
            sh "${params.GCP_COMMAND} ${params.GCP_COMMAND_ARGS}"
          }
        }
      }
    }
  }
}
