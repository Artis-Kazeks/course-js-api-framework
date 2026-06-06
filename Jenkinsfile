pipeline {
    agent any
    triggers {
        pollSCM('*/1 * * * *')
    }
    stages {
        stage('build') {
            steps {
                script{
                    build()
                }
            }
        }
        
    }
}

def build(){
    echo "Building api-tests..."
    sh "docker build -t artisktdl/api-tests ."

    echo "Pushing image to docker registry..."
    sh "docker push artisktdl/api-tests"
}