# ``
# Error
# 缺少必要的上下文
# ```

tellraw @s [\
    {"text": "[mgs] ", "hover_event": {"action": "show_text", "value": [{"text": "miniGameScript"}, "\n", {"translate": "peminder.mgs.pack_description", "fallback": "轻量级小游戏框架包.", color: "green"}]}},\
    {"translate": "error.mgs.team.get_base.unknown_context", "fallback": "Unknown context 'base'.", "color": "red", "hover_event": {"action": "show_text", "value": [{text:"#mgs:team.get_base",color:"yellow"}]}}\
]
data remove storage mgs:io stack[-1]
