#> inventory_gui:core/action/select/slot/17
# @within function inventory_gui:core/action/select/_

# 選択されたアイテムのidを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:17b}].tag.InventoryGui.id

# 別のアイテムが入っていれば返還
    execute if data storage inventory_gui:temp CurrentInventory[{Slot:17b}] run data modify storage inventory_gui:temp ShulkerItems set from storage inventory_gui:temp CurrentInventory[{Slot:17b}]
