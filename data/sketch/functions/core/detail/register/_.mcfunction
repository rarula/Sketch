#> sketch:core/detail/register/_
# @within function sketch:api/register

# 実行者が未登録であれば登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!Sketch.RegisteredEntity] run function sketch:core/detail/register/init
