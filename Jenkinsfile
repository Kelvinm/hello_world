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
  //agent { dockerfile true }
  agent any
  stages {
    stage ('push built to local repo') {
      // agent { dockerfile true }
      steps {
        sh 'docker build -t localhost:5000/hello_world:latest .'
        sh 'docker push localhost:5000/hello_world:latest'
      }
    }
    stage("Test") {
      //would normally tag this as something other than latest, like candidate etc.
      agent { docker 'localhost:5000/hello_world:latest' } // for some reason this context isn't getting passed along properly
      steps {
        //sh 'pytest'  
        sh 'docker run -t localhost:5000 pytest'
      }
    }
  }
}
