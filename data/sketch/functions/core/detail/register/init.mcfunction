#> sketch:core/detail/register/init
# @within function sketch:core/detail/register/_

#>
# @private
    #declare score_holder $Index
    #declare score_holder $TempIndex

# OhMyDatを割り当て
    function #oh_my_dat:please

# インタラクト先探索用にIdを割り当て
    scoreboard players add $Index Sketch 1
    execute if score $Index Sketch matches 32768 run scoreboard players set $Index Sketch 1
    scoreboard players operation $TempIndex Sketch = $Index Sketch

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
    scoreboard players reset $TempIndex Sketch

    scoreboard players operation @s SketchId = $Index Sketch

# 登録済みとして設定
    tag @s add SketchEntity
