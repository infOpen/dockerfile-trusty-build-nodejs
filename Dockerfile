FROM infopen/jenkins-slave-ubuntu-trusty-build-deb:0.2.0
MAINTAINER Alexandre Chaussier <a.chaussier@infopen.pro>

# Install NodeJS dependencies
RUN apt-get update && \
    apt-get install -y rlwrap

# Install nodejs packages to manage javascript jobs
RUN wget -q https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs-dbg_6.3.0-1nodesource1~trusty1_amd64.deb && \
        wget -q https://deb.nodesource.com/node_6.x/pool/main/n/nodejs/nodejs_6.3.0-1nodesource1~trusty1_amd64.deb && \
        dpkg -i ./nodejs_6.3.0-1nodesource1~trusty1_amd64.deb && \
        dpkg -i ./nodejs-dbg_6.3.0-1nodesource1~trusty1_amd64.deb && \
        rm ./nodejs-dbg_6.3.0-1nodesource1~trusty1_amd64.deb && \
        rm ./nodejs_6.3.0-1nodesource1~trusty1_amd64.deb
