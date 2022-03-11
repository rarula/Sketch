#> inventory_gui:core/detail/unlink
# @within function inventory_gui:api/unlink

# タグを削除
    tag @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt] remove InvGui.ConnectingAt
