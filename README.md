注释各种开源代码，方便做更深入的分析。

* 额外增加的注释始终是单独一行，不修改原来的代码 
* 使用 `git diff > patch_file` 来把改动的部分放到独立的问题
* 初次使用时，使用 `git apply patc_file` 来把新增的注释插入进去


# How to use

```bash
# 以 submodule 的模式把 VictoriaMetrics cluster 分支的代码克隆到本地
make vm_clone

# 把注释信息 patch 回源码
make apply_patch

# 把新增的注释再写回 patch 文件
make diff
```

# Projects

## VictoriaMetrics/VictoriaMetrics

* [`[源码阅读][vmselect] 从promql 到一条曲线，计算过程是怎么样的？`](https://www.cnblogs.com/ahfuzhang/p/19119114)
* [`[源码阅读]vmselect开了一个 `clusternativeListenAddr` 的端口后，级联的逻辑是怎么样的？`](https://www.cnblogs.com/ahfuzhang/p/19113042)
* [vmagent 源码阅读](https://www.cnblogs.com/ahfuzhang/p/19088201)


