terraform{
    required_providers {
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.6.0"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.2"
}

resource "minikube_cluster" "minikube_docker" {
    driver = "docker"
    cluster_name = "devops-pipeline"
    addons = [
        "default-storageclass",
        "storage-provisioner"
    ]
}

