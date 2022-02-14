#> inventorygui:core/register/_
# @within function inventorygui:api/register

# 登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!InvGui.RegisteredEntity] run function inventorygui:core/register/init
