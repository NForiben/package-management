Manager Node Setup on RedHat
===========================

sudo hostnamectl set-hostname manager 
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO https://dl.k8s.io/release/v1.26.0/bin/linux/amd64/kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
chmod +x kubectl
mkdir -p ~/.local/bin
mv ./kubectl ~/.local/bin/kubectl
# and then append (or prepend) ~/.local/bin to $PATH

kubectl version --client

sudo su - ec2-user

# copy the .kube/config file from the master node and copy it into a new directory on the manager node called .kube/config
# mkdir .kube
# vi .kube/config
# You'll now be able to manage the cluster from the manager node instead on the master node 
