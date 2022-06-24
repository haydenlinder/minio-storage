FROM heroku/heroku:20

ADD entrypoint.sh /entrypoint.sh

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
    mkdir -p /mnt/minio/data && \
    chmod +x /entrypoint.sh && \
    mkdir -m 777 /minio

CMD /entrypoint.sh