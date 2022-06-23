FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

RUN ["server", "/data", "--console-address", $PORT]