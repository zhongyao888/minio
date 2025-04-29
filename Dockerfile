FROM minio/minio:latest

# 设置访问凭证（写死）
ENV MINIO_ROOT_USER=ZdmGJNn8
ENV MINIO_ROOT_PASSWORD=rVn1Yp21

# 启动时创建 demo 桶（可选）
RUN mkdir -p /data/demo

# 正确启动命令
CMD ["minio", "server", "/data", "--address", ":9000", "--console-address", ":9001"]
