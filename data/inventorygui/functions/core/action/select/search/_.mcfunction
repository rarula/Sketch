#> inventorygui:core/action/select/search/_
# @within function inventorygui:core/action/select/_

execute store success storage inventorygui:core/action/select Success.0 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{0:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{0:true}} run function inventorygui:core/action/select/search/1
execute if data storage inventorygui:core/action/select {Success:{0:false}} run function inventorygui:core/action/select/search/0

data remove storage inventorygui:core/action/select Success
data remove storage inventorygui:core/action/select Items
data remove storage inventorygui:core/action/select ShulkerItems
