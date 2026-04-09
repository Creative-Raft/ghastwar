#应用附魔效果
scoreboard players set @s gamemode 0
scoreboard players set @s[gamemode=creative] gamemode 1
scoreboard players set @s[gamemode=adventure] gamemode 2
scoreboard players set @s[gamemode=spectator] gamemode 3

$item replace entity @s saddle with stone[enchantments={"$(enchant)":1},equippable={slot:"saddle",equip_sound:{sound_id:"empty"}}]
execute if predicate weapons:fly run tag @s add gw_ench_fly

gamemode spectator
execute unless entity @s[tag=gw_ench_fly] run gamemode survival
gamemode survival @s[scores={gamemode=0}]
gamemode creative @s[scores={gamemode=1}]
gamemode adventure @s[scores={gamemode=2}]

item replace entity @s saddle with air

tag @s remove gw_ench_fly
