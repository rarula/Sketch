#> inventory_gui:core/tick
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# ドロップされたアイテムに対する処理
    execute if entity @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, limit=1] if entity @a[scores={InventoryGuiDrop=1..}, limit=1] at @a[scores={InventoryGuiDrop=1..}] anchored eyes if entity @e[type=minecraft:item, distance=..1.5, limit=1] as @e[type=minecraft:item, distance=..1.5, sort=nearest] run function inventory_gui:core/action/drop/check_drop_item

# アクション可能であるプレイヤーに対する処理
    execute if entity @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, limit=1] as @a at @s if entity @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity, distance=..9.0, limit=1] run function inventory_gui:core/action/check_action

# リセット
    scoreboard players reset @s[scores={InventoryGuiDrop=-2147483648..2147483647}] InventoryGuiDrop
