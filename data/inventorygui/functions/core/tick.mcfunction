#> inventorygui:core/tick
# @within tag/function minecraft:tick

# アクション可能であるか確認
    execute if entity @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, limit=1] at @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity] if entity @a[distance=..10.0, limit=1] run function inventorygui:core/action/check

# リセット
    data remove storage inventorygui:core isExecuted
