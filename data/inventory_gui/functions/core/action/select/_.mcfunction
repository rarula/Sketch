#> inventory_gui:core/action/select/_
#
# アイテム選択時に呼び出される
#
# @within function inventory_gui:core/action/check_action

## 前処理
# 紐付け
    function inventory_gui:api/link

# 選択前のインベントリを取得 (OhMyDat)
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function #oh_my_dat:please

# 選択後のインベントリを取得
    data modify storage inventory_gui:temp CurrentInventory set from entity @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] Items

# 紐付けをリセット
    function inventory_gui:api/unlink


## メイン処理
# 選択されたスロットの処理へ
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 0b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 0b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/0
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 1b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 1b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/1
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 2b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 2b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/2
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 3b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 3b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/3
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 4b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 4b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/4
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 5b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 5b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/5
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 6b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 6b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/6
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 7b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 7b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/7
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 8b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 8b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/8
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot: 9b}] unless data storage inventory_gui:temp CurrentInventory[{Slot: 9b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/9
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:10b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:10b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/10
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:11b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:11b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/11
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:12b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:12b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/12
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:13b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:13b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/13
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:14b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:14b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/14
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:15b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:15b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/15
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:16b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:16b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/16
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:17b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:17b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/17
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:18b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:18b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/18
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:19b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:19b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/19
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:20b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:20b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/20
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:21b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:21b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/21
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:22b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:22b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/22
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:23b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:23b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/23
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:24b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:24b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/24
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:25b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:25b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/25
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.LastInventory[{Slot:26b}] unless data storage inventory_gui:temp CurrentInventory[{Slot:26b}].tag.InventoryGui.Button run function inventory_gui:core/action/select/slot/26

# idを設定
    data modify storage inventory_gui: out.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id

# コールバック
    function #inventory_gui:callback


## 後処理
# リセット
    data remove storage inventory_gui: out
    data remove storage inventory_gui:temp CurrentInventory
