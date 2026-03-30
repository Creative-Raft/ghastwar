# game.__init__()

# Attribute
    data modify storage mgs:io class.game.attribute set value {\
        "start": bool,\
        "settings": {\
            "anchor": double_array,\
            "player": {\
                "rebirth_time": 'int(s)'\
            },\
            "team": {\
                "weight": int_array,\
            }\
        }\
    }
# Instance
    data modify storage mgs:io class.game.instance merge value {\
        "0": {\
            "start": false,\
            "settings": {\
                "anchor": {"pos": [0,0,0], "dime": "minecraft:overworld"},\
                "player": {\
                    "rebirth_time": 5\
                },\
                "team": {\
                    "weight": [4,4,4,4],\
                }\
            }\
        }\
    }
