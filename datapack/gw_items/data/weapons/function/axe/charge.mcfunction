scoreboard players remove @s gw_axe_timer 1

execute unless score @s gw_axe_timer matches 1.. run tag @s remove gw_axe_charge

execute if score @s gw_axe_timer matches 1.. run return 0

attribute @s explosion_knockback_resistance modifier remove gw_axe
execute if predicate weapons:axe/used/main run item modify entity @s weapon.mainhand weapons:axe
execute if predicate weapons:axe/used/off run item modify entity @s weapon.offhand weapons:axe