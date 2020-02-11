pipeline {
  agent any
  stages {
    stage('Setup') {
      steps {
        echo 'Setup'
        sh 'src/setup.sh'
      }
    }

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

    stage('Clear workspace') {
      steps {
        cleanWs(cleanWhenAborted: true, cleanWhenFailure: true, cleanWhenNotBuilt: true, cleanWhenSuccess: true, cleanWhenUnstable: true)
      }
    }

  }
}