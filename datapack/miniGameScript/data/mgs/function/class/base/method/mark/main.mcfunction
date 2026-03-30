# base.mark()

data modify storage mgs:io stack append value {}
data modify storage mgs:io stack[-1].CONTEXT.pos_r set from storage mgs:io class.base.instance.red.pos
data modify storage mgs:io stack[-1].CONTEXT.dime_r set from storage mgs:io class.base.instance.red.dime
data modify storage mgs:io stack[-1].CONTEXT.pos_y set from storage mgs:io class.base.instance.yellow.pos
data modify storage mgs:io stack[-1].CONTEXT.dime_y set from storage mgs:io class.base.instance.yellow.dime
data modify storage mgs:io stack[-1].CONTEXT.pos_b set from storage mgs:io class.base.instance.blue.pos
data modify storage mgs:io stack[-1].CONTEXT.dime_b set from storage mgs:io class.base.instance.blue.dime
data modify storage mgs:io stack[-1].CONTEXT.pos_g set from storage mgs:io class.base.instance.green.pos
data modify storage mgs:io stack[-1].CONTEXT.dime_g set from storage mgs:io class.base.instance.green.dime
function mgs:class/base/method/mark/0.1 with storage mgs:io stack[-1].CONTEXT
data remove storage mgs:io stack[-1]