#> inventory_gui:core/detail/register/_
# @within function inventory_gui:api/register

# 登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!InvGui.RegisteredEntity] run function inventory_gui:core/detail/register/init
