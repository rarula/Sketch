#> inventorygui:core/action/select/search/0
# @within function inventorygui:core/action/select/search/_

execute store success storage inventorygui:core/action/select Success.1 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{1:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{1:true}} run function inventorygui:core/action/select/search/0-1
execute if data storage inventorygui:core/action/select {Success:{1:false}} run function inventorygui:core/action/select/search/0-0
