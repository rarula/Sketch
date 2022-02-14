#> inventorygui:core/action/select/search/1-0-1
# @within function inventorygui:core/action/select/search/1-0

execute store success storage inventorygui:core/action/select Success.3 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{3:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{3:true}} run function inventorygui:core/action/select/search/1-0-1-1
execute if data storage inventorygui:core/action/select {Success:{3:false}} run function inventorygui:core/action/select/search/found/9
