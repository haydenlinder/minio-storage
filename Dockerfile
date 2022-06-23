FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

RUN echo "####### port: $PORT ######"


CMD ["minio", "server", "/data", "--console-address", $PORT]