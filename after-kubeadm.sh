mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join 172.31.42.204:6443 --token svds8t.zzttqn7bwfmmqw8t \
    --discovery-token-ca-cert-hash sha256:5f4c7bf879cca9c18301b2ec2e41e625042ddd83a41cd6d5f5b28856187d47df
