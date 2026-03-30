# miniGameScript (MGS)

> 创建简单的游戏对象以及事件方法。

## 概要

将游戏进程、据点、玩家以及队伍等封装为游戏对象，通过事件函数便捷地控制游戏流程。

## 依赖

- Sniffer
- PlayerDataExpansion

## API

|                             函数                             |               描述               |            参数            |
| :----------------------------------------------------------: | :------------------------------: | :------------------------: |
| [`#mgs:game.start`](.\data\mgs\function\class\game\method\start\main.mcfunction) |             开始游戏             |             -              |
| [`#mgs:game.over`](.\data\mgs\function\class\game\method\over\main.mcfunction) |             结束游戏             |             -              |
| [`#mgs:game.assign_teams`](.\data\mgs\function\class\game\method\assign_teams\main.mcfunction) |    按预设权重随机分配玩家队伍    |             -              |
| [`#mgs:player.get_team`](.\data\mgs\function\class\player\method\get_team\main.mcfunction) | 解析`player`依赖的`team`类并返回 |             -              |
| [`#mgs:player.leave_team`](.\data\mgs\function\class\player\method\leave_team\main.mcfunction) |        使玩家退出所处队伍        |             -              |
| [`#mgs:player.death`](.\data\mgs\function\class\player\method\death\main.mcfunction) |           玩家死亡事件           |             -              |
| [`#mgs:player.tp_base`](.\data\mgs\function\class\player\method\tp_base\main.mcfunction) |         将玩家传送至据点         |             -              |
| [`#mgs:player.rebirth`](.\data\mgs\function\class\player\method\rebirth\main.mcfunction) |           玩家复活事件           |             -              |
| [`#mgs:base.mark`](.\data\mgs\function\class\base\method\mark\main.mcfunction) |           生成据点标记           |             -              |
| [`#mgs:base.kill`](.\data\mgs\function\class\base\method\kill\main.mcfunction) |           删除据点标记           |             -              |
| [`#mgs:base.damaged`](.\data\mgs\function\class\base\method\damaged\main.mcfunction) |  更新据点状态为`false`(被破坏)   | CONTEXT: {"class": "base"} |
| [`#mgs:team.get_base`](.\data\mgs\function\class\team\method\get_base\main.mcfunction) |  解析`team`依赖的`base`类并返回  | CONTEXT: {"class": "base"} |
| [`#mgs:ceil`](.\data\mgs\function\fun\ceil\main.mcfunction)  |         整数向上取整函数         |   score a&b => ceil(a/b)   |
| [`#mgs:class_parsing`](.\data\mgs\function\fun\class_parsing\main.mcfunction) |         解析类对象并返回         |  macro -> (class object)   |
| [`#mgs:gamerule`](.\data\mgs\function\fun\gamerule\main.mcfunction) |          初始化游戏规则          |             -              |



