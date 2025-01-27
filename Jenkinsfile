pipeline {
    agent any

    parameters {
        booleanParam(name: 'PLAN_TERRAFORM', defaultValue: false, description: 'Check to plan Terraform changes')
        booleanParam(name: 'APPLY_TERRAFORM', defaultValue: false, description: 'Check to apply Terraform changes')
        /*booleanParam(name: 'DESTROY_TERRAFORM', defaultValue: false, description: 'Check to destroy Terraform changes')*/
    }

    stages {
        stage('Clone Repository') {
            steps {
                deleteDir()  // Clean workspace before cloning
                git branch: 'main', url: 'https://github.com/akylgit/jenkins-deploy-aws2.git'
                sh "ls -lart"
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Directly set AWS environment variables (replace with your actual AWS keys)
                    withEnv([
                        "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}",
                        "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}"
                    ]) {
                        dir('infra') {
                            sh 'echo "=================Terraform Init=================="'
                            sh 'terraform init'
                        }
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    if (params.PLAN_TERRAFORM) {
                        dir('infra') {
                            sh 'echo "=================Terraform Plan=================="'
                            sh 'terraform plan'
                        }
                    }
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    if (params.APPLY_TERRAFORM) {
                        dir('infra') {
                            sh 'echo "=================Terraform Apply=================="'
                            sh 'terraform apply -auto-approve'
                        }
                    }
                }
            }
        }

        /*stage('Terraform Destroy') {
            steps {
                script {
                    if (params.DESTROY_TERRAFORM) {
                        dir('infra') {
                            sh 'echo "=================Terraform Destroy=================="'
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }*/
    }
}
