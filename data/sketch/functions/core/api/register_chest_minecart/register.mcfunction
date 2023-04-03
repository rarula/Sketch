#> sketch:core/api/register_chest_minecart/register
# @within function sketch:core/api/register_chest_minecart/_

#>
# @private
    #declare score_holder $TempIndex


# 実行者を登録
    tag @s add Sketch.Entity

# Indexを割り当て
    scoreboard players add $MinecartIndex Sketch 1
    execute if score $MinecartIndex Sketch matches 32768 run scoreboard players set $MinecartIndex Sketch 1
    scoreboard players operation $TempIndex Sketch = $MinecartIndex Sketch

    scoreboard players operation $TempIndex Sketch *= $65536 Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.15-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.15-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.14-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.14-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.13-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.13-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.12-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.12-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.11-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.11-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.10-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.10-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.9-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.9-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.8-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.8-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.7-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.7-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.6-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.6-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.5-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.5-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.4-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.4-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.3-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.3-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.2-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.2-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.1-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.1-1

    scoreboard players operation $TempIndex Sketch += $TempIndex Sketch
    execute if score $TempIndex Sketch matches 00.. run tag @s add Sketch.Filter.0-0
    execute if score $TempIndex Sketch matches ..-1 run tag @s add Sketch.Filter.0-1

# Idを割り当て
    scoreboard players operation @s Sketch.Id = $MinecartIndex Sketch


# リセット
    scoreboard players reset $TempIndex Sketch
