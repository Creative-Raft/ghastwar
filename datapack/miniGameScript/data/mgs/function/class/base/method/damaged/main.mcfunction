# base.damaged()

execute unless data storage mgs:io stack[-1].CONTEXT.base{"class": "base"} run return run function mgs:class/base/method/damaged/errors/0

execute if data storage mgs:io stack[-1].CONTEXT.base{"name": "red"} run return run data modify storage mgs:io class.base.instance.red.start set value false
execute if data storage mgs:io stack[-1].CONTEXT.base{"name": "yellow"} run return run data modify storage mgs:io class.base.instance.yellow.start set value false
execute if data storage mgs:io stack[-1].CONTEXT.base{"name": "blue"} run return run data modify storage mgs:io class.base.instance.blue.start set value false
execute if data storage mgs:io stack[-1].CONTEXT.base{"name": "green"} run return run data modify storage mgs:io class.base.instance.green.start set value false
