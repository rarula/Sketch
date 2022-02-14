#> inventorygui:core/action/tick
# @within function inventorygui:core/action/check

#>
# @within
#   inventorygui:core/tick
#   inventorygui:core/action/**
#declare storage inventorygui:core

# アイテム選択を確認する
    function inventorygui:core/action/select/check

# アイテムドロップを確認する
    execute if entity @s[scores={InventoryGuiDrop=1..}] at @s anchored eyes if entity @e[type=minecraft:item, distance=..1.5, limit=1] as @e[type=minecraft:item, distance=..1.5, sort=nearest] run function inventorygui:core/action/drop/check

# リセット
    scoreboard players reset @s[scores={InventoryGuiDrop=-2147483648..2147483647}] InventoryGuiDrop

# 再実行されないように設定
    tag @s add InvGui.CheckedPlayer
