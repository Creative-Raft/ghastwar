# __init__
function #mgs:gamerule

# Calss.__init__()
function mgs:class/base/__init__
function mgs:class/game/__init__
function mgs:class/player/__init__
function mgs:class/team/__init__

# Global
    # Variables
    scoreboard objectives add mgs.var dummy [{"text":"MGS ","color":"aqua"},{"text":"Variables","color":"gold"}]
    # Constant
    scoreboard objectives add mgs.const dummy [{"text":"MGS ","color":"aqua"},{"text":"Constant","color":"gold"}]
        scoreboard players set #1 mgs.const 1
        scoreboard players set #2 mgs.const 2
        scoreboard players set #3 mgs.const 3
        scoreboard players set #4 mgs.const 4
        scoreboard players set #5 mgs.const 5
        scoreboard players set #6 mgs.const 6
        scoreboard players set #7 mgs.const 7
        scoreboard players set #8 mgs.const 8
        scoreboard players set #9 mgs.const 9
        scoreboard players set #10 mgs.const 10
        scoreboard players set #11 mgs.const 11
        scoreboard players set #12 mgs.const 12
        scoreboard players set #13 mgs.const 13
        scoreboard players set #14 mgs.const 14
        scoreboard players set #15 mgs.const 15
        scoreboard players set #16 mgs.const 16
        scoreboard players set #17 mgs.const 17
        scoreboard players set #18 mgs.const 18
        scoreboard players set #19 mgs.const 19
        scoreboard players set #20 mgs.const 20
        scoreboard players set #1e2 mgs.const 100
        scoreboard players set #1e3 mgs.const 1000
        scoreboard players set #1e4 mgs.const 10000

