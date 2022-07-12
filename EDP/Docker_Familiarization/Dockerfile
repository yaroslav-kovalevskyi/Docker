FROM epamedp/edp-jenkins-base-agent:1.0.26 AS jenkins-agent
USER root
WORKDIR /home/jenkins
COPY ./required_soft.sh .
RUN sh ./required_soft.sh 
USER jenkins