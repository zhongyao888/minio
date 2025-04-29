FROM minio/minio:latest

# 设置环境变量
ENV MINIO_ROOT_USER=ZdmGJNn8
ENV MINIO_ROOT_PASSWORD=rVn1Yp21

# 正确的启动命令
CMD ["minio", "server", "/data", "--address", ":9000", "--console-address", ":9001"]
