#> inventory_gui:core/detail/create/set_item
#
# @input
#   10000 -64 10000 container.0~26 Gui作成時に配置されるアイテム
#
# @within function inventory_gui:core/detail/create/_

# 設定されるインベントリを取得 (OhMyDat)
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory set from block 10000 -64 10000 Items

# アイテムを設定
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 0b}] run item replace entity @s container.0 from block 10000 -64 10000 container.0 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 1b}] run item replace entity @s container.1 from block 10000 -64 10000 container.1 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 2b}] run item replace entity @s container.2 from block 10000 -64 10000 container.2 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 3b}] run item replace entity @s container.3 from block 10000 -64 10000 container.3 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 4b}] run item replace entity @s container.4 from block 10000 -64 10000 container.4 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 5b}] run item replace entity @s container.5 from block 10000 -64 10000 container.5 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 6b}] run item replace entity @s container.6 from block 10000 -64 10000 container.6 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 7b}] run item replace entity @s container.7 from block 10000 -64 10000 container.7 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 8b}] run item replace entity @s container.8 from block 10000 -64 10000 container.8 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 9b}] run item replace entity @s container.9 from block 10000 -64 10000 container.9 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:10b}] run item replace entity @s container.10 from block 10000 -64 10000 container.10 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:11b}] run item replace entity @s container.11 from block 10000 -64 10000 container.11 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:12b}] run item replace entity @s container.12 from block 10000 -64 10000 container.12 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:13b}] run item replace entity @s container.13 from block 10000 -64 10000 container.13 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:14b}] run item replace entity @s container.14 from block 10000 -64 10000 container.14 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:15b}] run item replace entity @s container.15 from block 10000 -64 10000 container.15 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:16b}] run item replace entity @s container.16 from block 10000 -64 10000 container.16 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:17b}] run item replace entity @s container.17 from block 10000 -64 10000 container.17 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:18b}] run item replace entity @s container.18 from block 10000 -64 10000 container.18 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:19b}] run item replace entity @s container.19 from block 10000 -64 10000 container.19 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:20b}] run item replace entity @s container.20 from block 10000 -64 10000 container.20 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:21b}] run item replace entity @s container.21 from block 10000 -64 10000 container.21 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:22b}] run item replace entity @s container.22 from block 10000 -64 10000 container.22 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:23b}] run item replace entity @s container.23 from block 10000 -64 10000 container.23 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:24b}] run item replace entity @s container.24 from block 10000 -64 10000 container.24 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:25b}] run item replace entity @s container.25 from block 10000 -64 10000 container.25 inventory_gui:button
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:26b}] run item replace entity @s container.26 from block 10000 -64 10000 container.26 inventory_gui:button

# 初期化
    loot replace block 10000 -64 10000 container.0 27 loot inventory_gui:air
