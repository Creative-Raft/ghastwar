# player.death()
# @sniffer:player_death

execute unless entity @s[tag = mgs.active] run return 0

data modify storage mgs:io stack append value {}
gamemode spectator @s
tag @s add mgs.death
tag @s add mgs.anchor
function #pde:data.rw {player: this}
    data modify storage pde:io input[-1].data.mgs.anchor.dime set from storage mgs:io class.game.instance.0.settings.anchor.dime
    data modify storage pde:io input[-1].data.mgs.anchor.x set from storage mgs:io class.game.instance.0.settings.anchor.pos[0]
    data modify storage pde:io input[-1].data.mgs.anchor.y set from storage mgs:io class.game.instance.0.settings.anchor.pos[1]
    data modify storage pde:io input[-1].data.mgs.anchor.z set from storage mgs:io class.game.instance.0.settings.anchor.pos[2]
schedule function mgs:class/player/method/death/0.1 2t append
function #mgs:player.get_team
    data modify storage mgs:io stack[-1].CONTEXT.team set from storage mgs:io return
function #mgs:team.get_base
    data modify storage mgs:io stack[-1].CONTEXT.base set from storage mgs:io return
execute if data storage mgs:io stack[-1].CONTEXT.base{state: true} store result score @s mgs.player.rebirth_clock run data get storage mgs:io class.game.instance.0.settings.player.rebirth_time 20
data remove storage mgs:io stack[-1]
