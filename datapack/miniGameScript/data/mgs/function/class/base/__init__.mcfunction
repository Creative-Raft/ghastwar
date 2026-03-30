# base.__init__()

# Attribute
    data modify storage mgs:io class.base.attribute set value {\
        "pos": double_array,\
        "dime": str,\
        "state": bool,\
    }
# Instance
    # 红队
    data modify storage mgs:io class.base.instance merge value {\
        "red": {\
            "pos": [0,0,0],\
            "dime": "minecraft:overworld",\
            "state": true,\
        }\
    }
    # 黄队
    data modify storage mgs:io class.base.instance merge value {\
        "yellow": {\
            "pos": [0,0,0],\
            "dime": "minecraft:overworld",\
            "state": true,\
        }\
    }
    # 蓝队
    data modify storage mgs:io class.base.instance merge value {\
        "blue": {\
            "pos": [0,0,0],\
            "dime": "minecraft:overworld",\
            "state": true,\
        }\
    }
    # 绿队
    data modify storage mgs:io class.base.instance merge value {\
        "green": {\
            "pos": [0,0,0],\
            "dime": "minecraft:overworld",\
            "state": true,\
        }\
    }