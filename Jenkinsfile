pipeline {

  /*
    This is an example Jenkinsfile with a CI/CD pipeline for Terraform modules.
    The steps in this pipeline include:
    - terraform init
    - terraform validate
    - terraform fmt
    - git tag

    In order to this pipeline work properly your Jenkins environment must satisfy the following requirements:
    - Have an Agent labeled with terraform and terraform binaries installed
    - Pipeline Utility Steps plugin installed
    - SSH Agent plugin installed
    - OCI Credentials created
    - git Credentials created
  */
  agent {
    label 'terraformtest'
  }

  /*
    The following variables should be created as Credentials in Jenkins. This credentials are used to connecto to Oracle Cloud Infrastructure.
  */
  environment {
    tenancy_ocid          = credentials('tenancy_ocid')
    user_ocid             = credentials('user_ocid')
    fingerprint           = credentials('fingerprint')
    private_key           = credentials('private_key')
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')

    PATH = "/var/jenkins_home/terraform_temp:${env.PATH}" // Add terraform and terragrunt to PATH
  }

  stages {
    stage('Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Validate') {
      steps {
        sh 'terraform validate'
      }
    }

    stage('Format') {
      steps {
        sh 'terraform fmt -recursive -check -diff'
      }
    }

    /*
      If previous validations are successfull, the module is tagged with the contents of version.json file
    */
    stage('Tag') {
      steps {
        script {
          JsonFile = readJSON file: 'version.json'
          TagVersion = JsonFile.version
        }
        sh "git config --local user.name 'Jenkins'"
        sh "git config --local user.email 'jenkins@localhost'"
        sh 'git config -l'
        sh "git tag -a ${TagVersion} -m 'Automatic CI/CD tag'"
        sshagent (credentials: ['git-credentials']) {
          sh 'git push --tags'
        }
      }
    }
  }
}  
