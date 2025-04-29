FROM minio/minio:latest

# 设置用户名密码（写死）
ENV MINIO_ROOT_USER=ZdmGJNn8
ENV MINIO_ROOT_PASSWORD=rVn1Yp21

# 创建数据目录
RUN mkdir -p /data/demo

# 启动 MinIO
ENTRYPOINT ["minio"]
CMD ["server", "/data", "--address", ":9000", "--console-address", ":9001"]
