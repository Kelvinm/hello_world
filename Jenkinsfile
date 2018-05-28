pipeline {
  /*agent { dockerfile true }
  stages {
    stage("Test") {
      steps {
        sh 'pytest'
      }
    }
  }*/
  
  // On doing more reseaerch, probably would be better to build it locally as part of the agent and test it further on?  I need to finish.
  agent none 
  stages {
    stage ('Build') {
      steps {
        sh 'docker build -t localhost:5000/hello_world:latest . '
      }
    }
    stage("Test") {
      //would normally tag this as something other than latest, like candidate etc.
      agent { docker 'localhost:5000/hello_world:latest' } 
      steps {
        sh 'pytest'
      }
    }
  }
}
