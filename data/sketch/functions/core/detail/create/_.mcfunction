#> sketch:core/detail/create/_
#
# @input
#   10000 -64 10000 container.0~26
#
# @within function sketch:api/create

# 紐付け
    function sketch:api/link

# アイテムを配置
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.LinkingEntity] run function sketch:core/detail/create/set_item

# 紐付けを解除
    function sketch:api/unlink
