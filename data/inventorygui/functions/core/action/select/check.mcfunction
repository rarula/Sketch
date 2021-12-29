#> inventorygui:core/action/select/check
# @within function inventorygui:core/action/tick

# アイテム選択していれば実行
    execute store success storage inventorygui:core isSelected byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true}} 0
    execute if data storage inventorygui:core {isSelected:true} run function inventorygui:core/action/select/_

# リセット
    data remove storage inventorygui:core isSelected
