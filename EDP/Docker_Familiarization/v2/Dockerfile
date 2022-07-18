FROM epamedp/edp-jenkins-base-agent:1.0.26
USER root
#Updating kubectl
ENV latest_kubectl=https://storage.googleapis.com/kubernetes-release/release/stable.txt
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/"$(curl -s ${latest_kubectl})"/bin/linux/amd64/kubectl \
&& chmod +x ./kubectl \
&& mv ./kubectl /usr/local/bin/kubectl
#Installing Helm 3
ENV desired_helm=3.9.1
RUN curl -LO https://get.helm.sh/helm-v${desired_helm}-linux-amd64.tar.gz \
&& tar -zxvf helm-v${desired_helm}-linux-amd64.tar.gz \
&& mv linux-amd64/helm /usr/local/bin/helm
#Installing cm-push
RUN helm plugin install https://github.com/chartmuseum/helm-push
#Intalling hadolint
ENV desired_hadolint=2.10.0
RUN curl -LO https://github.com/hadolint/hadolint/releases/download/v${desired_hadolint}/hadolint-Linux-x86_64 \
&& chmod +x ./hadolint-Linux-x86_64 \
&& chown jenkins hadolint-Linux-x86_64 \
&& mv hadolint-Linux-x86_64 /usr/local/bin/hadolint
#Installing tfenv
RUN git clone --depth=1 https://github.com/tfutils/tfenv.git ~/.tfenv \
&& ln -s ~/.tfenv/bin/* /usr/local/bin
USER jenkins