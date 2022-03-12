#> inventory_gui:core/detail/unlink
# @within function inventory_gui:api/unlink

# 紐付けを解除
    tag @e[type=minecraft:chest_minecart, tag=InvGui.LinkingEntity] remove InvGui.LinkingEntity
