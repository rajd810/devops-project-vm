pipeline {
    agent any
    stages {
        stage('Clean Workspaces') {
            steps {
                cleanWs()
            }
        }
        stage("Clone Git Repository") {
            steps {
                git(
                    url: "https://github.com/rajd810/devops-project-vm.git",
                    branch: "main",
                    changelog: true,
                    poll: true
                )
            }
        }
        stage("Printing Sample Message") {
            steps {
                echo "Hello, Starting CI CD pipeline- Push"
            }
        }
        stage("Running container") {
            steps {
                echo "Creating container"
                sh "docker build -t devops-vm:0.1 ."
            }
        }
    }
}