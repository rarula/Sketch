#> inventorygui:core/tick
# @within tag/function minecraft:tick

#>
# @within inventorygui:**
#declare tag InvGui.CheckedPlayer

# アクション可能であるか確認
    execute if entity @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, limit=1] at @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity] if entity @a[distance=..10.0, limit=1] as @a[distance=..10.0] run function inventorygui:core/action/check

# リセット
    tag @a[tag=InvGui.CheckedPlayer] remove InvGui.CheckedPlayer
