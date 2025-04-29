FROM minio/minio:latest

# 设置访问凭证（写死）
ENV MINIO_ROOT_USER=ZdmGJNn8
ENV MINIO_ROOT_PASSWORD=rVn1Yp21

# 创建数据目录
RUN mkdir -p /data/demo

# 创建启动脚本
RUN echo '#!/bin/sh \n\
minio server /data --address ":9000" --console-address ":9001" & \n\
sleep 5 \n\
mc alias set local http://localhost:9000 $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD \n\
mc mb local/demo || true \n\
mc anonymous set readonly local/demo \n\
wait' > /start.sh

# 赋予执行权限
RUN chmod +x /start.sh

# 容器启动时执行
CMD ["/bin/sh", "/start.sh"]
