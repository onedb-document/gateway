# gateway

nginx 网关，做服务转发

## 说明

- 映射到主机 80 端口，对外暴露提供服务。
- 访问首页“/”，重定向到“/notebooks/”
- 内部使用反向代理，代理到多个上游服务（notebooks 等等）

## 注意事项

定义共同的 network：`onedb-net`

```yaml
networks:
  onedb-net:
    name: onedb-net
```

在服务中使用：

```yaml
networks:
  - onedb-net
```

## 部署

使用`github actions`进行自动化构建部署
