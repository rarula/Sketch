#> sketch:core/api/register_chest_minecart/_
# @within function sketch:api/register_chest_minecart

# 実行者が未登録 -> 実行者を登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!Sketch.Entity] run function sketch:core/api/register_chest_minecart/register
