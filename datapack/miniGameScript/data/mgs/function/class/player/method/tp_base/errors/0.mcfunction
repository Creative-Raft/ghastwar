# ``
# Error
# 玩家不在预设队伍中
# ```

tellraw @s [\
    {"text": "[mgs] ", "hover_event": {"action": "show_text", "value": [{"text": "miniGameScript"}, "\n", {"translate": "peminder.mgs.pack_description", "fallback": "轻量级小游戏框架包.", color: "green"}]}},\
    {"translate": "error.mgs.player.tp_base.no_team", "fallback": "The team does not exist.", "color": "red", "hover_event": {"action": "show_text", "value": [{text:"#mgs:player.tp_base",color:"yellow"}]}}\
]
