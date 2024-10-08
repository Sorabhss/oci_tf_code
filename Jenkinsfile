pipeline {
    agent any
    environment {
        TF_VAR_region = 'us-ashburn-1' // Set your OCI region
        TF_VAR_tenancy_ocid = credentials('OCI_TENANCY_OCID') // OCI Tenancy OCID stored in Jenkins credentials
        TF_VAR_user_ocid = credentials('OCI_USER_OCID') // OCI User OCID stored in Jenkins credentials
        TF_VAR_fingerprint = credentials('OCI_FINGERPRINT') // OCI Fingerprint stored in Jenkins credentials
        TF_VAR_private_key_path = credentials('OCI_PRIVATE_KEY_PATH') // Path to private key stored in Jenkins
        TF_VAR_compartment_ocid = credentials('OCI_COMPARTMENT_OCID') // OCI Compartment OCID stored in Jenkins credentials
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout your Terraform code from your repository
                git url: 'https://github.com/Sorabhss/oci_tf_code.git', branch: 'main'
            }
        }

        stage('Init Terraform') {
            steps {
                script {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }

        stage('Plan Terraform') {
            steps {
                script {
                    // Create a Terraform plan
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Apply Terraform') {
            steps {
                script {
                    // Apply the Terraform plan
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }

    post {
        always {
            // Clean up the workspace
            cleanWs()
        }
        success {
            echo 'Deployment to Oracle Cloud was successful!'
        }
        failure {
            echo 'Deployment to Oracle Cloud failed.'
        }
    }
}
