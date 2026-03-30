# player.__init__()

# Attribute
    data modify storage mgs:io class.player.attribute set value {\
        "index": int,\
        "name": str,\
        "team": class-team,\
        "mode": '(active|idle)',\
    }
    scoreboard objectives add mgs.player.rebirth_clock dummy [{"text":"MGS ","color":"aqua"},{"text":"rebirthClock","color":"gold"}]
# Instance
