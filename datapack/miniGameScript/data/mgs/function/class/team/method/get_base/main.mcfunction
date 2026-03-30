# team.get_base()

data modify storage mgs:io stack append value {"CONTEXT":{}}
execute unless data storage mgs:io stack[-2].CONTEXT.base{"class": "base"} run return run function mgs:class/team/method/get_base/errors/0
data modify storage mgs:io stack[-1].CONTEXT merge from storage mgs:io stack[-2].CONTEXT
data modify storage mgs:io stack[-1].base set from storage mgs:io stack[-1].CONTEXT.team.base
function #mgs:class_parsing with storage mgs:io stack[-1].base
data remove storage mgs:io stack[-1]
