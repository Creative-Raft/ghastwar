advancement revoke @s only weapons:axe/used
function utils:enchant_apply {enchant:"weapons:charge"}

execute if predicate weapons:axe/used/main run item modify entity @s weapon.mainhand weapons:axe_consume
execute if predicate weapons:axe/used/off run item modify entity @s weapon.offhand weapons:axe_consume

tag @s add gw_axe_charge

attribute @s explosion_knockback_resistance modifier add gw_axe 10 add_value
summon wind_charge ~ ~ ~ {Tags:["gw_axe_burst"],Motion:[0,-0.1,0]}


execute store result storage gw_temp axe.damage float 0.015 run attribute @s attack_damage get 100
execute rotated ~ 0 positioned ^ ^ ^1 run function weapons:axe/damage with storage gw_temp axe

scoreboard players set @s gw_axe_timer 2