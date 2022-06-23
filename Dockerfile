FROM minio/minio:latest

EXPOSE 9000
EXPOSE 9001

RUN echo "####### port: $PORT ######"

ENTRYPOINT ["minio"]

CMD ["server", "/data", "--console-address", $PORT]