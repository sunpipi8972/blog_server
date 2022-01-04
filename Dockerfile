FROM centos:centos8
COPY installers/* /home/
# 安装nodejs和hexo
ENV PATH=/usr/local/lib/nodejs/node-v16.13.1-linux-x64/bin:$PATH
RUN yum install -y git \
    && mkdir -p /usr/local/lib/nodejs \
    && tar -xJvf /home/node-v16.13.1-linux-x64.tar.xz -C /usr/local/lib/nodejs \
    && npm install -g hexo \
    && rm -rf /home/node-v16.13.1-linux-x64.tar.xz \
    && mkdir /home/hexo_src \
    && hexo init /home/hexo_src