FROM centos:centos8
COPY installers/* /home/
# 安装nodejs
RUN yum install -y git \
    && mkdir -p /usr/local/lib/nodejs \
    && tar -xJvf /home/node-v16.13.1-linux-x64.tar.xz -C /usr/local/lib/nodejs \
    && export PATH=/usr/local/lib/nodejs/node-v16.13.1-linux-x64/bin:$PATH \
    && source /etc/profile
