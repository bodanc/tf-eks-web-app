# tf-eks-web-app

aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name) --no-verify-ssl
