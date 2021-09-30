pipeline { 
    agent {label 'maven-label'} 
    options {
        skipStagesAfterUnstable()
        sdjhfjhd
        test1
        tool M3
        tool D3
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
