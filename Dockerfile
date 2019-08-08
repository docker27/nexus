FROM qianchun27/centos-jdk-maven:7.8.3

MAINTAINER qianchun, qianchun27@hotmail.com

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV BASE_INSTALL_DIR /opt/install

RUN mkdir -p ${BASE_INSTALL_DIR}

COPY nexus.sh ${BASE_INSTALL_DIR}

COPY nexus-3.2.0-01-unix.tar.gz ${BASE_INSTALL_DIR}

COPY restart.sh ${BASE_INSTALL_DIR}

COPY install.sh ${BASE_INSTALL_DIR}

COPY nexus.properties ${BASE_INSTALL_DIR}

RUN sh ${BASE_INSTALL_DIR}/install.sh;
