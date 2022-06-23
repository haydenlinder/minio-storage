FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

ENTRYPOINT []

RUN "minio server /data --console-address $PORT"