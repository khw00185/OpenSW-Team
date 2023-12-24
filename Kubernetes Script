# Kubernetes script

## - 가상머신 NAT 네트워크 설정
## - ubuntu install

## - Master node
``` bash
hostname #호스트네임 확인
sudo vi /ect/hosts #호스트 추가. 마스터 노드 1개, 워커 노드 4개 추가함
```

```
10.100.0.104  master.example.com  master
10.100.0.101  node1.example.com  node1
10.100.0.102  node2.example.com  node2
10.100.0.103  node3.example.com  node3
10.100.0.105  node4.example.com  node4
```

``` bash
sudo passwd root # 루트 계정 설정
```

### 원격 로그인 지원  ssh
``` bash
sudo apt-get update
sudo apt-get install -y openssh-server curl vim tree
sudo systemctl status ssh
```

### Docer install
``` bash
sudo apt-get update
sudo apt-get install \
  apt-tranport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com.linux/ubuntu/gpg | sudp apt-key add -

systemctl status docker
```
## - 가상머신 복제
위의 master node를 각 node1, node2, node3, node4 로 복제 후, ipaddress, hostname 수정

```
sudo vi /etc/hostname
```

### Kubernetes install
``` bash
sudo -i

# Swap disabled
swapoff -a && sed -i '/swap/s/^/#/' /etc/fstab
# Letting iptables see bridged traffic
cat <<EOF > /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-ip6tables = 1
net.bridge.bridge-nf-call-iptables = 1
EOF
sudo sysctl --system
# Disable firewall
systemctl stop firewalld
systemctl disable firewalld
# installing runtime
# docker  설치완료 동작중

#installing kubeadm, kubelet and kubectl

sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg |sudo apt-key add -
cat <<EOF |sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

```

``` bash

sudo systemctl daemon-reload

sudo systemctl restart kubelet

systemctl status kubelet
```

### weavnet 
``` bash
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s-1.11.yaml

```

## kubeadm
- master node -> kubeadm init 
- worker node -> kubeadm join (위의 init해서 나온 join 명령어를 복사해두고, 워커 노드에서 그 명령어 실행)

## master node
``` bash
kubectl get nodes
```
노드 연결 확인



## - 서비스 연결
레드마인과 젠킨스의 매니페스트 파일을 만들었으나 연동하는 과정에서 오류 발생 
