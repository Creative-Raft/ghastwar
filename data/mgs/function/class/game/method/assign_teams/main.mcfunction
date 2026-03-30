# game.assign_teams(weight:int_array)

# stack = data.Path(storage = 'mgs:io', path = 'stack')
# stack.append(value = {'CONTEXT': {'weight': f'{weight}'}})
# weight = data.Path(stack.'[-1]'.'CONTEXT'.'weight')
$data modify storage mgs:io stack append value {"CONTEXT": {"weight": $(weight)}}
# num = player.count(tag = 'mgs.active')
execute store result score #num mgs.var if entity @a[tag = mgs.active]
# weight_r, weight_y, weight_b, weight_g = weight
execute store result score #weight_r mgs.var run data get storage mgs:io stack[-1].CONTEXT.weight[0]
execute store result score #weight_y mgs.var run data get storage mgs:io stack[-1].CONTEXT.weight[1]
execute store result score #weight_b mgs.var run data get storage mgs:io stack[-1].CONTEXT.weight[2]
execute store result score #weight_g mgs.var run data get storage mgs:io stack[-1].CONTEXT.weight[3]
# sum = weight_r + weight_y + weight_b + weight_g
scoreboard players operation #sum mgs.var = #weight_r mgs.var
scoreboard players operation #sum mgs.var += #weight_y mgs.var
scoreboard players operation #sum mgs.var += #weight_b mgs.var
scoreboard players operation #sum mgs.var += #weight_g mgs.var
# stack[-1]('r') = ceil(weight_r, sum)
# stack[-1]('y') = ceil(weight_y, sum)
# stack[-1]('b') = ceil(weight_b, sum)
# stack[-1]('g') = ceil(weight_g, sum)
scoreboard players operation #b mgs.var = #sum mgs.var
scoreboard players operation #a mgs.var = #weight_r mgs.var
execute store result score #a mgs.var run function #mgs:ceil
execute store result score #i mgs.var if entity @a[team = mgs.r]
execute store result storage mgs:io stack[-1].r int 1 run scoreboard players operation #a mgs.var -= #i mgs.var
scoreboard players operation #a mgs.var = #weight_y mgs.var
execute store result score #a mgs.var run function #mgs:ceil
execute store result score #i mgs.var if entity @a[team = mgs.y]
execute store result storage mgs:io stack[-1].y int 1 run scoreboard players operation #a mgs.var -= #i mgs.var
scoreboard players operation #a mgs.var = #weight_b mgs.var
execute store result score #a mgs.var run function #mgs:ceil
execute store result score #i mgs.var if entity @a[team = mgs.b]
execute store result storage mgs:io stack[-1].b int 1 run scoreboard players operation #a mgs.var -= #i mgs.var
scoreboard players operation #a mgs.var = #weight_g mgs.var
execute store result score #a mgs.var run function #mgs:ceil
execute store result score #i mgs.var if entity @a[team = mgs.g]
execute store result storage mgs:io stack[-1].g int 1 run scoreboard players operation #a mgs.var -= #i mgs.var
# team.join(context = stack[-1]('CONTEXT'))
function mgs:class/game/method/assign_teams/0.1 with storage mgs:io stack[-1].CONTEXT
# del stack[-1]
data remove storage mgs:io stack[-1]
