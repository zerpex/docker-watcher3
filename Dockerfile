FROM python:alpine

RUN apk --no-cache add zip && \
    wget https://github.com/nosmokingbandit/Watcher3/archive/master.zip && \
    unzip master.zip && \
    mv /Watcher3-master /watcher3

VOLUME /watcher3/userdata /watcher3/plugins

EXPOSE 80

CMD /usr/local/bin/python3 /watcher3/watcher.py --port 80
