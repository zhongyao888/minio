FROM minio/minio:latest

CMD ["server", "/data", "--console-address", ":9000"]
