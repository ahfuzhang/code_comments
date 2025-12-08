注释各种开源代码，并提供代码分析的文档。

# How to use

```bash
# 克隆源码
make clone prj=VictoriaMetrics name=VictoriaLogs ver=v1.37.0

# 注释源码后，生成 patch 文件
make diff name=VictoriaLogs ver=v1.37.0

# 把当前的 patch 文件，应用到源码目录
make patch name=VictoriaLogs ver=v1.37.0
```

# 项目

## github.com/dotnet/aspnetcore

```bash
make clone prj=dotnet name=aspnetcore ver=v8.0.22
```
