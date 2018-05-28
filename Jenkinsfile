pipeline {
 
  // On doing more reseaerch, probably would be better to build it locally as part of the agent and test it further on?  I need to finish.
  agent any
  stages {
    stage ('push built to local repo') {
      steps {
        sh 'docker build -t localhost:5000/hello_world:latest .'
        sh 'docker push localhost:5000/hello_world:latest'
      }
    }
    stage("Test") {
      //would normally tag this as something other than latest, like candidate etc.
      steps {
        sh 'docker run -t localhost:5000/hello_world pytest'
      }
    }
    stage("Deploy") {
      steps {
        sh 'docker run -t -d -p 5050:5000 localhost:5000/hello_world'
      }
    }
  }
}
