FROM centos:centos7

RUN yum -y install java-1.7.0-openjdk-devel.x86_64 wget freetype fontconfig openssl tar bzip2 && \
	wget http://nodejs.org/dist/v6.1.0/node-v6.1.0-linux-x64.tar.gz && \
	tar --strip-components 1 -xzvf node-v* -C /usr/local && \
	sh -c "echo export JAVA_HOME=/etc/alternatives/java_sdk >> /etc/environment" 
	
RUN echo export JAVA_HOME=/etc/alternatives/java_sdk >> /etc/bashrc

RUN npm i -g npm-cache-install
