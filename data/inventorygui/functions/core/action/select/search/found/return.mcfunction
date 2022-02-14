#> inventorygui:core/action/select/search/found/return
# @within function inventorygui:core/action/select/search/found/*

#>
# @private
#declare score_holder $InventorySize

# アイテムをシュルカーボックスに移動
    execute in minecraft:overworld run item replace block 1 1 1 container.0 with minecraft:debug_stick
    execute in minecraft:overworld run data modify block 1 1 1 Items[0] set from storage inventorygui:core/action/select ShulkerItems

# インベントリサイズを取得 (防具・オフハンドスロットを除く)
    data modify storage inventorygui:core/action/select Inventory set from entity @s Inventory
    execute store result score $InventorySize InventoryGui if data storage inventorygui:core/action/select Inventory[]
    execute if data storage inventorygui:core/action/select Inventory[{Slot:100b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventorygui:core/action/select Inventory[{Slot:101b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventorygui:core/action/select Inventory[{Slot:102b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventorygui:core/action/select Inventory[{Slot:103b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventorygui:core/action/select Inventory[{Slot:-106b}] run scoreboard players remove $InventorySize InventoryGui 1

# 返還
    execute if score $InventorySize InventoryGui matches ..35 in minecraft:overworld run loot give @s mine 1 1 1 minecraft:debug_stick
    execute if score $InventorySize InventoryGui matches 36.. at @s in minecraft:overworld run loot spawn ~ ~ ~ mine 1 1 1 minecraft:debug_stick

# リセット
    scoreboard players reset $InventorySize InventoryGui
    data remove storage inventorygui:core/action/select Inventory
