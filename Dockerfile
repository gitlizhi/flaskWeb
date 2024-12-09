# 基础镜像
FROM  python:3.10
# author
MAINTAINER lizhi

# 指定路径
WORKDIR /app
# 复制jar文件到路径
COPY . /app

# 将/etc/localtime链接到上海时区文件
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装依赖文件
RUN pip3 install -r requirement.txt

# 启动文件服务
ENTRYPOINT ["python3","main.py"]
