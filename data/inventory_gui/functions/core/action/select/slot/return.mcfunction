#> inventory_gui:core/action/select/slot/return
# @within function inventory_gui:core/action/select/_

#>
# @private
#declare score_holder $InventorySize

# アイテムをシュルカーボックスに移動
    item replace block 10000 -64 10000 container.0 with minecraft:debug_stick
    data modify block 10000 -64 10000 Items[0] set from storage inventory_gui:temp ShulkerItems

# インベントリサイズを取得 (防具・オフハンドスロットを除く)
    data modify storage inventory_gui:temp Inventory set from entity @s Inventory
    execute store result score $InventorySize InventoryGui if data storage inventory_gui:temp Inventory[]
    execute if data storage inventory_gui:temp Inventory[{Slot:100b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventory_gui:temp Inventory[{Slot:101b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventory_gui:temp Inventory[{Slot:102b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventory_gui:temp Inventory[{Slot:103b}] run scoreboard players remove $InventorySize InventoryGui 1
    execute if data storage inventory_gui:temp Inventory[{Slot:-106b}] run scoreboard players remove $InventorySize InventoryGui 1

# 返還
    execute if score $InventorySize InventoryGui matches ..35 run loot give @s mine 10000 -64 10000 minecraft:debug_stick
    execute if score $InventorySize InventoryGui matches 36.. at @s run loot spawn ~ ~ ~ mine 10000 -64 10000 minecraft:debug_stick

# リセット
    scoreboard players reset $InventorySize InventoryGui
    data remove storage inventory_gui:temp Inventory
    data remove storage inventory_gui:temp ShulkerItems
