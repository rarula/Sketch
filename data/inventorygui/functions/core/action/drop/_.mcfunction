#> inventorygui:core/action/drop/_
# @within function inventorygui:core/action/drop/check

# 発見されたアイテムをドロップしたプレイヤー探索
    execute at @s as @a[scores={InventoryGuiDrop=1..}, sort=nearest] at @s anchored eyes if entity @e[type=minecraft:item, tag=InvGui.DroppedItem, distance=..1.5] run function inventorygui:core/action/drop/search/player/check

# リセット
    kill @s
