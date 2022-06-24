cd /minio
wget https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
rm /bin/sh && ln -s /bin/bash /bin/sh
export MINIO_ROOT_PASSWORD="$MINIO_ROOT_PASSWORD"
export MINIO_ROOT_USER="$MINIO_ROOT_USER"
./minio server --address :$PORT --console-address :9000 /mnt/minio/data