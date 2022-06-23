FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

ENTRYPOINT [""]

CMD ["minio","server", "/data", "--console-address", $PORT]