execute store result score #t mgs.var run scoreboard players operation #i mgs.var = @s mgs.player.rebirth_clock
scoreboard players remove @s mgs.player.rebirth_clock 1
scoreboard players operation #i mgs.var %= #20 mgs.const
execute unless score #i mgs.var matches 0 run return 0
scoreboard players operation #t mgs.var /= #20 mgs.const
title @s title {"translate": "", "fallback": "YOU DIED!", "color": "red"}
title @s subtitle {"translate": "", "fallback": "You will respawn in %s seconds!", "with": [{"type": "score", "score": {"name": "#t", "objective": "mgs.var"}, "color": "red"}], "color": "yellow"}
