#> sketch:core/detail/register/_
# @within function sketch:api/register

# 実行者が未登録のチェスト付きトロッコであれば登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!Sketch.RegisteredEntity] run function sketch:core/detail/register/init
