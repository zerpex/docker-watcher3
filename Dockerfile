FROM python:alpine

RUN apk --no-cache add zip && \
    wget https://github.com/nosmokingbandit/Watcher3/archive/master.zip && \
    unzip master.zip

VOLUME /Watcher3-master/userdata

EXPOSE 80

CMD /usr/local/bin/python3 /Watcher3-master/watcher.py --port 80
