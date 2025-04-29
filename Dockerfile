FROM minio/minio:latest

# 这里设置环境变量
ENV MINIO_ROOT_USER=ZdmGJNn8
ENV MINIO_ROOT_PASSWORD=rVn1Yp21

# 启动命令
CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]
