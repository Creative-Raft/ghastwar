# Sniffer (嗅探兽)

> Datapack 事件广播前置库.

## 概要

由于原版给予的众多事件发生器功能相较比较单调, 为了简化原版数据包开发流程并优化多包调用同类触发器导致的性能损耗, 因此编写此包。

## 事件

> [!CAUTION]
> 通过标签直接调用的函数中使用`return`会造成错误!

|事件|描述|函数接口|
|:---:|:---:|:---:|
|[`player_death`](.\data\sniffer\function\player_death\main.mcfunction)|玩家死亡时触发|#sniffer:player_death|
|[`player_init`](.\data\sniffer\function\player_init\main.mcfunction)|玩家第一次加入游戏时触发|#sniffer:player_init|