#Updating kubectl
echo | curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
echo | chmod +x ./kubectl
echo | mv kubectl /usr/local/bin/kubectl

#Installing helm3
echo | wget "https://get.helm.sh/helm-v3.9.0-linux-amd64.tar.gz"
echo | tar -zxvf helm-v3.9.0-linux-amd64.tar.gz
echo | mv linux-amd64/helm /usr/local/bin/helm
echo | rm helm-v3.9.0-linux-amd64.tar.gz

#Installing helm cm-push plugin
echo | helm plugin install https://github.com/chartmuseum/helm-push

#Installing tfenv
echo | git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv
echo | ln -s ~/.tfenv/bin/* /usr/local/bin

#Installing hadolint
echo | wget "https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64"
echo | chmod +x ./hadolint-Linux-x86_64 && chown jenkins hadolint-Linux-x86_64
echo | mv hadolint-Linux-x86_64 /usr/local/bin/hadolint