#禁用盾功能

summon armor_stand ^ ^ ^1 {Invisible:1b,Marker:1b,Small:1b,equipment:{mainhand:{id:"diamond_sword",count:1,components:{weapon:{disable_blocking_for_seconds:2.5}}}},Tags:["gw_sword_disable_temp"]}

damage @s 0.01 mob_attack by @n[tag=gw_sword_disable_temp]

tp @n[tag=gw_sword_disable_temp] ~ -100 ~
kill @n[tag=gw_sword_disable_temp]