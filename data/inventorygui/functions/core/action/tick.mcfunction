#> inventorygui:core/action/tick
# @within function inventorygui:core/action/check

#>
# @within
#   inventorygui:core/tick
#   inventorygui:core/action/**
#declare storage inventorygui:core

# 再実行されないように設定
    data modify storage inventorygui:core isExecuted set value true

# アイテム選択を確認する
    execute as @a run function inventorygui:core/action/select/check

# アイテムドロップを確認する
    execute if entity @a[scores={InventoryGuiDrop=1..}, limit=1] at @a[scores={InventoryGuiDrop=1..}] anchored eyes if entity @e[type=minecraft:item, distance=..1.5, limit=1] as @e[type=minecraft:item, distance=..1.5, sort=nearest] run function inventorygui:core/action/drop/check

# リセット
    scoreboard players reset @a[scores={InventoryGuiDrop=-2147483648..2147483647}] InventoryGuiDrop
