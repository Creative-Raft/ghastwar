# team.__init__()

# Attribute
    data modify storage mgs:io class.team.attribute set value {\
        "index": int,\
        "name": str,\
        "color": str,\
        "base": class-base,\
    }
# Instance
    # 红队
    data modify storage mgs:io class.team.instance merge value {\
        "red": {\
            "index": 0,\
            "name": {"translate": "team.mgs.r", "fallback": "红"},\
            "color": "red",\
            "base": {"class": "base", "name": "red"},\
        }\
    }
    team add mgs.r {"translate": "team.mgs.r", "fallback": "红", "bold": true, "color": "red"}
    # 黄队
    data modify storage mgs:io class.team.instance merge value {\
        "yellow": {\
            "index": 1,\
            "name": {"translate": "team.mgs.y", "fallback": "黄"},\
            "color": "yellow",\
            "base": {"class": "base", "name": "yellow"},\
        }\
    }
    # 蓝队
    team add mgs.y {"translate": "team.mgs.y", "fallback": "黄", "bold": true, "color": "yellow"}
    data modify storage mgs:io class.team.instance merge value {\
        "blue": {\
            "index": 2,\
            "name": {"translate": "team.mgs.b", "fallback": "蓝"},\
            "color": "blue",\
            "base": {"class": "base", "name": "blue"},\
        }\
    }
    team add mgs.b {"translate": "team.mgs.b", "fallback": "蓝", "bold": true, "color": "blue"}
    # 绿队
    data modify storage mgs:io class.team.instance merge value {\
        "green": {\
            "index": 3,\
            "name": {"translate": "team.mgs.g", "fallback": "绿"},\
            "color": "green",\
            "base": {"class": "base", "name": "green"},\
        }\
    }
    team add mgs.g {"translate": "team.mgs.g", "fallback": "绿", "bold": true, "color": "green"}
