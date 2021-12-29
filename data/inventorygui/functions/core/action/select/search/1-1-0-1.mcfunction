#> inventorygui:core/action/select/search/1-1-0-1
# @within function inventorygui:core/action/select/search/1-1-0

execute store success storage inventorygui:core/action/select Success.4 byte 1.0 run clear @s #inventorygui:all{InventoryGui:{Button:true, SlotFinder:{4:true}}} 0
execute if data storage inventorygui:core/action/select {Success:{4:true}} run data modify storage inventorygui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.Items[{Slot:4b}].tag.InventoryGui.id
execute if data storage inventorygui:core/action/select {Success:{4:false}} run data modify storage inventorygui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.Items[{Slot:5b}].tag.InventoryGui.id
