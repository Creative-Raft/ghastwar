$execute as @e[distance=..2,tag=!gw_axe_charge] run damage @s $(damage) player_attack by @n[tag=gw_axe_charge]
effect give @e[distance=..2,tag=!gw_axe_charge] slowness 1 4

particle explosion ~ ~1.5 ~ 0 0 0 0 0 normal