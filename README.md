注释各种开源代码，并提供代码分析的文档。
避免上传大量源码，所以采用 patch 的模式。
需要先 clone 目标仓库，然后把注释 patch 上去。

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

## github.com/cespare/xxhash

```bash
make clone prj=cespare name=xxhash ver=v2.3.0
make diff name=xxhash ver=v2.3.0
```

## github.com/grpc/grpc-dotnet

```bash
make clone prj=grpc name=grpc-dotnet ver=v2.71.0
make diff name=grpc-dotnet ver=v2.71.0
```

* 安装 sdk
  - brew install --cask dotnet-sdk@9
* 列出安装的 sdk
  - dotnet --list-sdks
  
    
