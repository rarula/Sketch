#> sketch:core/detail/refresh
# @within function sketch:api/refresh

# 紐付け
    function sketch:api/link

# インベントリを初期化
    loot replace entity @e[type=minecraft:chest_minecart, tag=SketchTarget] container.0 255 loot sketch:air

# 紐付けを解除
    function sketch:api/unlink
