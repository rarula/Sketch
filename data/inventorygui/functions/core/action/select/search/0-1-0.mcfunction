#> inventorygui:core/action/select/search/0-1-0
# @within function inventorygui:core/action/select/search/0-1

execute store success storage inventorygui:core/action/select Success.3 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{3:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{3:true}} run function inventorygui:core/action/select/search/0-1-0-1
execute if data storage inventorygui:core/action/select {Success:{3:false}} run data modify storage inventorygui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.Items[{Slot:19b}].tag.InventoryGui.id
