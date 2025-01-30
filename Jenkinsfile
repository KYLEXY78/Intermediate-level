pipeline {
    agent any

    environment {
        KUBECONFIG = "C:\\Users\\Sybil System\\Downloads\\bootcamp_assessment-main\\intermediate-level\\kubeconfig.yaml"
    }

    stages {
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    echo "Configuring Git buffer size..."
                    bat 'git config --global http.postBuffer 524288000'
                    
                    echo "Deploying application to Kubernetes..."
                    bat """
                        kubectl apply -f "C:/Users/Sybil System/Downloads/bootcamp_assessment-main/intermediate-level/staticapp.yaml" --kubeconfig=%KUBECONFIG%
                        kubectl get pods --kubeconfig=%KUBECONFIG%
                    """
                }
            }
        }
    }
}
