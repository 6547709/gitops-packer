基于CI/CD实现Packer自动化构建虚拟机模板


功能列表：
- 提供Windows2016/2019，CentOS7/8，Ubuntu18/19/20主流操作系统版本
- 提供CentOS7/8的带GUI版本
- 语义版本定义，自动化递增，并自动在vCenter中使用-latest后缀，保持最新模板
- 提供CentOS8的ks.cfg光盘自动化构建（因为CentOS8默认不在支持软驱）和自动上传到虚拟化存储中
- 所有Linux系统网卡名称更改为"eth0"
- 所有系统自动创建"ops"账户，用于维护/提供给最终用户
- 所有系统安装VMware Tools，GUI系统支持自适应分辨率
- 所有系统进行基础优化和加固
- 所有系统自动安装最新操作系统补丁
- 所有系统采用VMware准虚拟（pvscsi）控制器和VMXNET 3网卡类型
- CentOS8-GUI系统，安装最新Linux内核（5.8.X），并配置为首选启动内核
- 提供packer-gitops容器的Dockerfile
- 定时执行自动化构建任务（每月一次）
- vCenter内容库集成
- 在CI/CD配置文件中自定义Root、OPS和Administrator账户密码
- 构建完成后，列出内容库中模板
- 采用具备最新补丁的Windows系统安装盘，优化Windows部署时间

未来功能（incoming）:
- 模板漏洞扫描
- 模板自动部署SaltStack Minion

