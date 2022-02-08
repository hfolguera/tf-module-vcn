pipeline {
  agent any

  environment {
    tenancy_ocid          = credentials('tenancy_ocid')
    user_ocid             = credentials('user_ocid')
    fingerprint           = credentials('fingerprint')
    private_key           = credentials('private_key')
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
  }

  stages {
    stage('Format') {
      steps {
        sh 'id'
        sh 'pwd'
        sh 'ls -lh'
        sh 'echo $PATH'
        sh 'ls -l /bin/'
        sh '/var/jenkins_home/terraform_temp/terraform fmt'
      }
    }
  }
}  
