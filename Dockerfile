FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

ENTRYPOINT ["minio"]

CMD ["server", "/data", "--console-address", $PORT]