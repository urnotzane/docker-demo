# 基础镜像
FROM node:latest

# 指定后续命令的用户
USER root

# 将当前目录下的所有文件（除了.dockerignore排除的路径）复制到镜像的/app目录，目录不存在时会自动创建
COPY . /app

# 指定接下来的工作路径
WORKDIR /app

RUN npm i

# 将容器3000端口暴露出来，允许外部访问
EXPOSE 3000

# 起web服务
ENTRYPOINT ["npm", "run"]
CMD ["start"]