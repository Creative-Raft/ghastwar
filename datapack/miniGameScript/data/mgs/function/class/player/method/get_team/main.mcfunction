# player.get_team()

data modify storage mgs:io stack append value {}
function #pde:data.or {player: this}
    data modify storage mgs:io stack[-1].team set from storage pde:io output[-1].data.mgs.team
function #mgs:class_parsing with storage mgs:io stack[-1].team
data remove storage mgs:io stack[-1]
