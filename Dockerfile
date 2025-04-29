FROM minio/minio:latest

CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]
