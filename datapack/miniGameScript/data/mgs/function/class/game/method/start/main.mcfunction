# game.start()

# data.Path(storage = 'mgs:io', path = 'class.game.instance.0').merge({'start': true})
data modify storage mgs:io class.game.instance.0 merge value {"start": true}
# game.assign_teams(weight = data.Path(storage = 'mgs:io', path = 'class.game.instance.0.settings.team'))
function #mgs:game.assign_teams with storage mgs:io class.game.instance.0.settings.team
# base.mark()
# for i in player(tag = 'mgs.active'):
#   i.tp_base()
function #mgs:base.mark
execute as @a[tag = mgs.active] run function #mgs:player.tp_base
