FROM jenkins/jenkins:lts-centos

USER root
RUN echo "timeout=600" >> /etc/yum.conf
RUN yum update -y \
    && yum install -y yum-utils \
    && yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
RUN yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.2.6-3.3.el7.x86_64.rpm
RUN yum update -y \
    && yum install -y docker-ce docker-ce-cli

RUN usermod -aG docker jenkins
