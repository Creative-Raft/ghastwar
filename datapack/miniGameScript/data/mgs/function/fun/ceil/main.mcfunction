# ```
# ceil(a/b)整数向上取整函数
# ```

scoreboard players operation #a mgs.var += #b mgs.var
scoreboard players operation #a mgs.var -= #1 mgs.const
return run scoreboard players operation #a mgs.var /= #b mgs.var
