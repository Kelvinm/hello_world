pipeline {
  agent { dockefile true }
  stages {
    stage("Test") {
      steps {
        sh 'pytest'
      }
    }
  }
}