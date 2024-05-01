pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Build Maven'){
           steps {
                    checkout scmGit(
                        branches: [[name: '*/main']],
                        userRemoteConfigs: [[url: 'https://github.com/umutsefkansak/devops']]
                    )
                    bat 'mvn clean install'
                }
        }
        stage('Build docker image'){
            steps{
                script{
                    docker.build("devops:${env.BUILD_NUMBER}")
                    //bat 'docker build -t umut/devops .'
                }
            }
        }
        stage('Push image to hub'){
            steps{
                script{
                    docker.image("devops:${env.BUILD_NUMBER}").run("-d -p 8989:8989 --name devops")
                }
            }
        }
    }
}