# game.over()

# data.Path(storage = 'mgs:io', path = 'class.game.instance.0').merge({'start': false})
data modify storage mgs:io class.game.instance.0 merge value {"start": false}
# team.leave()
execute as @a run function #mgs:player.leave_team
# base.kill()
function #mgs:base.kill
