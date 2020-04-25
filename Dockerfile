FROM python:alpine

RUN apk --no-cache add curl git && \
    cd /opt && \
    git clone https://github.com/barbequesauce/Watcher3 watcher3 

VOLUME /opt/watcher3/userdata /opt/watcher3/plugins

EXPOSE 80

LABEL description="Watcher3 in alpine." \
      maintainer="zer <zerpex@gmail.com>"

CMD /usr/local/bin/python3 /opt/watcher3/watcher.py --port 80
