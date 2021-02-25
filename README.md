## 函数问题复现步骤

```fun version <=3.6.21```

```shell
fun local start
```

上述指令的执行完成后，另开一个 terminal，进入当前 repo 目录后执行：

```shell
cd invoke-function && npm i && ACCESS_KEY_ID=xxx ACCESS_KEY_SECRET=xxx node main.js
```

## 镜像问题复现

```shell
make image-run
```