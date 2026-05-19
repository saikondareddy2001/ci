pipeline {
    agent any // We run on the Ubuntu host so we can build and start Docker containers

    stages {
        stage('Build Image') {
            steps {
                echo 'Building the Docker Image...'
                sh 'docker build -t my-python-app .'
            }
        }

        stage('Deploy Application') {
            steps {
                echo 'Deploying to Ubuntu VM...'
                // The '|| true' ignores errors if the container doesn't exist yet
                sh 'docker rm -f live-python-app || true'
                sh 'docker run -d -p 5000:5000 --name live-python-app my-python-app'
            }
        }
    }
}
