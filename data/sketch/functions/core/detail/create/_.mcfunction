#> sketch:core/detail/create/_
#
# @input
#   vector 10000 -64 10000
#       container.0~26
#
# @within function sketch:api/create

function sketch:api/link

# インベントリに指定されたアイテムを配置
    execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function sketch:core/detail/create/set_inventory

function sketch:api/unlink

# インベントリを初期化
    loot replace block 10000 -64 10000 container.0 27 loot sketch:air
