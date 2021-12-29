#> inventorygui:core/action/select/search/1-0
# @within function inventorygui:core/action/select/search/1

execute store success storage inventorygui:core/action/select Success.2 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{2:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{2:true}} run function inventorygui:core/action/select/search/1-0-1
execute if data storage inventorygui:core/action/select {Success:{2:false}} run function inventorygui:core/action/select/search/1-0-0
