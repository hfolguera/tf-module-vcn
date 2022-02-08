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
    stage('Init') {
      steps {
        sh '/var/jenkins_home/terraform_temp/terraform init'
      }
    }

    stage('Validate') {
      steps {
        sh '/var/jenkins_home/terraform_temp/terraform validate'
      }
    }

    stage('Format') {
      steps {
        sh '/var/jenkins_home/terraform_temp/terraform fmt -recursive -check -diff'
      }
    }

    stage('Tag') {
      steps {
        script {
          JsonFile = readJSON file: 'version.json'
          TagVersion = JsonFile.version
          echo "${JsonFile}"
          echo "${TagVersion}"
        }
        sh 'git tag -a ${TagVersion} -m "Automatic CI/CD tag"'
        sh 'git push --tags'
      }
    }
  }
}  
