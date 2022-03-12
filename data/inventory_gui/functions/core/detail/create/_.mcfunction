#> inventory_gui:core/detail/create/_
#
# @input
#   10000 -64 10000 container.0~26
#
# @within function inventory_gui:api/create

# 紐付け
    function inventory_gui:api/link

# アイテムを配置
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function inventory_gui:core/detail/create/set_item

# 紐付けを解除
    function inventory_gui:api/unlink
