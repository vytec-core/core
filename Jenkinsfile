pipeline { 
    agent {label 'maven-label'} 
    options {
        skipStagesAfterUnstable()
        sdjhfjhd
        test1
    }
    stages {
        stage('Build') { 
            steps { 
                sh 'make' 
            }
        }
        stage('Test'){
            steps {
                sh 'make check'
                junit 'reports/**/*.xml' 
            }
        }
        stage('Deploy') {
            steps {
                sh 'make publish'
            }
        }
    }
}
