#> inventorygui:core/action/select/search/found/26
# @within function inventorygui:core/action/select/search/0-0-0

data modify storage inventorygui: id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.Items[{Slot:26b}].tag.InventoryGui.id

# 別のアイテムが入っていれば返還
    execute if data storage inventorygui:core/action/select Items[{Slot:26b}] run data modify storage inventorygui:core/action/select ShulkerItems set from storage inventorygui:core/action/select Items[{Slot:26b}]
    execute if data storage inventorygui:core/action/select ShulkerItems run function inventorygui:core/action/select/search/found/return
