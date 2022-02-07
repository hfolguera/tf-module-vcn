pipeline {
  agent {
    label 'terragrunt'
  }

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
        sh 'find / -name terraform'
        sh 'pwd'
        sh 'ls -lh'
        sh 'echo $PATH'
        sh 'terraform fmt'
      }
    }
  }
}  
