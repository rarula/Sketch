#> inventory_gui:core/detail/refresh
# @within function inventory_gui:api/refresh

# 紐付け
    function inventory_gui:api/link

# インベントリを初期化
    loot replace entity @e[type=minecraft:chest_minecart, tag=InvGui.LinkingEntity] container.0 255 loot inventory_gui:air

# 紐付けを解除
    function inventory_gui:api/unlink
