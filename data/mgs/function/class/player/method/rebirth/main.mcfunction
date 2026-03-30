# player.rebirth()
# @player.__tick__

execute as @s[scores = {mgs.player.rebirth_clock = 1..}] run return run function mgs:class/player/method/rebirth/0.1
title @s title {"translate": "", "fallback": "RESPAWNED!", "color": "green"}
title @s subtitle ""
tag @s remove mgs.death
function #mgs:player.tp_base
