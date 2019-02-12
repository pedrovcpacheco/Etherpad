FROM centos:centos7
LABEL maintainer="Pedro Pacheco <users2010@gmail.com>"


RUN yum clean all &&  yum  install -y \
    epel-release  \
    git  \
    && adduser --home /opt/etherpad --shell /bin/bash etherpad && cd /opt/etherpad   \
    && yum  install -y nodejs  \
    && rm -rf /var/cache/yum   \
    && git clone https://github.com/ether/etherpad-lite.git  \ 
    && chown -R etherpad: /opt/etherpad/

WORKDIR /opt/etherpad/etherpad-lite

USER etherpad

ENV NODE_ENV=production

ENTRYPOINT ["/opt/etherpad/etherpad-lite/bin/run.sh"]

CMD ["--root"]
