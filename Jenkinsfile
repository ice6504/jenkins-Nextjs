pipeline{
    agent any
    tools {nodejs "my-nodejs"}
    stages{
        stage("Build"){
            steps{
                nodejs("my-nodejs") {
                    sh 'npm install'
                    sh 'npm build'
                }
            }
        }
        stage("Start"){
            steps{
                nodejs("my-nodejs") {
                    sh 'npm start'
                }
                echo "App started successfully"
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy process (set up manual deployment or server integration)'
            }
        }
        
    }
}