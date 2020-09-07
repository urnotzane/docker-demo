- 创建容器
  ```bash
  # 创建运行一个可交互式的容器
  docker run -it react-app:pro /bin/bash
  # 创建并后台运行一个可交互式的容器
  docker run -itd react-app:pro /bin/bash
  # 查看所有容器
  docker ps -a
  # 退出容器终端
  exit
  # 查看运行中的容器
  docker ps
  ```
- 启动容器
  ```bash
  # 启动已停止的容器
  docker start <Container ID/NAME>
  # 重启容器
  docker restart <Container ID/NAME>
  ```
- 停止容器
  ```bash
  # 停止运行中的容器
  docker stop <Container ID/NAME>
  ```
- 进入容器
  ```bash
  # 退出容器会停止容器：docker attach [OPTIONS] CONTAINER
  docker attach <Container ID>
  # 退出容器不会停止容器
  docker exec -it <Container> /bin/bash
  ```
- 删除容器
  ```bash
  # 删除指定容器
  docker rm -f <Container ID>
  # 清除所有终止状态的容器
  docker container prune
  ```
- 运行web应用
  ```bash
  # 运行容器并暴露内部端口至随机端口
  docker run -itd -P react-app:pro
  # 运行容器并暴露内部端口至指定端口
  docker run -itd -p 32768:3000 react-app:pro
  # 查看内部输出日志
  docker logs -f <Container ID/NAME>
  # 查看内部运行进程
  docker top <Container ID>
  ```