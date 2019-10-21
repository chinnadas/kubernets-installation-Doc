
kubernetes installation steps
=============================

docker installation
====================

https://kubernetes.io/docs/setup/production-environment/container-runtimes/

sudo usermod -aG docker ubuntu

kubelet, kubectl, kubeadmin installation
========================================

https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/#installing-runtime


kubeadm init --pod-network-cidr=10.244.0.0/16
=============================================

Your Kubernetes control-plane has initialized successfully!


To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 172.31.6.174:6443 --token lb560q.0bj0jzydfmsfc0ge \
    --discovery-token-ca-cert-hash sha256:54bf02f3772cfc2d6ac80498adf94867efce3d61507bb9e37177039f1b8a2d36

pod network flannel
===================


kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/2140ac876ef134e0ed5af15c65e414cf26827915/Documentation/kube-flannel.yml
