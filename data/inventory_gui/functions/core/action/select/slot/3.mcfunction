#> inventory_gui:core/action/select/slot/3
# @within function inventory_gui:core/action/select/_

# 選択されたアイテムのidを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:3b}].tag.InventoryGui.id

# 別のアイテムが入っていればデータを設定
    execute if data storage inventory_gui:temp CurrentInventory[{Slot:3b}] run data modify storage inventory_gui: out.item set from storage inventory_gui:temp CurrentInventory[{Slot:3b}]
