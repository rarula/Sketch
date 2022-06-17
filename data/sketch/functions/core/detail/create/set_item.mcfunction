#> sketch:core/detail/create/set_item
#
# @input
#   vector 10000 -64 10000 container.0~26
#
# @within function sketch:core/detail/create/_

# 最後に設定されたインベントリとして保存 (OhMyDat)
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory set from block 10000 -64 10000 Items

# アイテムを配置
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 0b}] run item replace entity @s container.0 from block 10000 -64 10000 container.0
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 1b}] run item replace entity @s container.1 from block 10000 -64 10000 container.1
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 2b}] run item replace entity @s container.2 from block 10000 -64 10000 container.2
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 3b}] run item replace entity @s container.3 from block 10000 -64 10000 container.3
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 4b}] run item replace entity @s container.4 from block 10000 -64 10000 container.4
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 5b}] run item replace entity @s container.5 from block 10000 -64 10000 container.5
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 6b}] run item replace entity @s container.6 from block 10000 -64 10000 container.6
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 7b}] run item replace entity @s container.7 from block 10000 -64 10000 container.7
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 8b}] run item replace entity @s container.8 from block 10000 -64 10000 container.8
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot: 9b}] run item replace entity @s container.9 from block 10000 -64 10000 container.9
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:10b}] run item replace entity @s container.10 from block 10000 -64 10000 container.10
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:11b}] run item replace entity @s container.11 from block 10000 -64 10000 container.11
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:12b}] run item replace entity @s container.12 from block 10000 -64 10000 container.12
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:13b}] run item replace entity @s container.13 from block 10000 -64 10000 container.13
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:14b}] run item replace entity @s container.14 from block 10000 -64 10000 container.14
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:15b}] run item replace entity @s container.15 from block 10000 -64 10000 container.15
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:16b}] run item replace entity @s container.16 from block 10000 -64 10000 container.16
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:17b}] run item replace entity @s container.17 from block 10000 -64 10000 container.17
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:18b}] run item replace entity @s container.18 from block 10000 -64 10000 container.18
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:19b}] run item replace entity @s container.19 from block 10000 -64 10000 container.19
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:20b}] run item replace entity @s container.20 from block 10000 -64 10000 container.20
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:21b}] run item replace entity @s container.21 from block 10000 -64 10000 container.21
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:22b}] run item replace entity @s container.22 from block 10000 -64 10000 container.22
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:23b}] run item replace entity @s container.23 from block 10000 -64 10000 container.23
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:24b}] run item replace entity @s container.24 from block 10000 -64 10000 container.24
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:25b}] run item replace entity @s container.25 from block 10000 -64 10000 container.25
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInventory[{Slot:26b}] run item replace entity @s container.26 from block 10000 -64 10000 container.26

# インベントリを初期化
    loot replace block 10000 -64 10000 container.0 27 loot sketch:air
