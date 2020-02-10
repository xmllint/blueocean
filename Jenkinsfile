pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Build'
        sh 'src/build.sh'
      }
    }

    stage('Test') {
      steps {
        echo 'Test'
        sh 'src/test.sh'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploy'
        sh 'src/deploy.sh'
      }
    }

  }
}
