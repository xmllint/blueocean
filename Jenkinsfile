pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Build'
        sh '''sh src/build.sh
'''
      }
    }

    stage('Test') {
      steps {
        echo 'Test'
        sh 'src/build.sh'
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