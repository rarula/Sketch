#> sketch:core/detail/create/set_inventory
#
# @input
#   vector 10000 -64 10000
#       container.0~26
#
# @within function sketch:core/detail/create/_

function #oh_my_dat:please

# Guiに配置されるアイテムのデータをストレージに移動
    data modify storage sketch:temp Items set from block 10000 -64 10000 Items

# 設定されているスロットにアイテムを配置
    execute if data storage sketch:temp Items[{Slot: 0b}] run item replace entity @s container.0 from block 10000 -64 10000 container.0
    execute if data storage sketch:temp Items[{Slot: 1b}] run item replace entity @s container.1 from block 10000 -64 10000 container.1
    execute if data storage sketch:temp Items[{Slot: 2b}] run item replace entity @s container.2 from block 10000 -64 10000 container.2
    execute if data storage sketch:temp Items[{Slot: 3b}] run item replace entity @s container.3 from block 10000 -64 10000 container.3
    execute if data storage sketch:temp Items[{Slot: 4b}] run item replace entity @s container.4 from block 10000 -64 10000 container.4
    execute if data storage sketch:temp Items[{Slot: 5b}] run item replace entity @s container.5 from block 10000 -64 10000 container.5
    execute if data storage sketch:temp Items[{Slot: 6b}] run item replace entity @s container.6 from block 10000 -64 10000 container.6
    execute if data storage sketch:temp Items[{Slot: 7b}] run item replace entity @s container.7 from block 10000 -64 10000 container.7
    execute if data storage sketch:temp Items[{Slot: 8b}] run item replace entity @s container.8 from block 10000 -64 10000 container.8
    execute if data storage sketch:temp Items[{Slot: 9b}] run item replace entity @s container.9 from block 10000 -64 10000 container.9
    execute if data storage sketch:temp Items[{Slot:10b}] run item replace entity @s container.10 from block 10000 -64 10000 container.10
    execute if data storage sketch:temp Items[{Slot:11b}] run item replace entity @s container.11 from block 10000 -64 10000 container.11
    execute if data storage sketch:temp Items[{Slot:12b}] run item replace entity @s container.12 from block 10000 -64 10000 container.12
    execute if data storage sketch:temp Items[{Slot:13b}] run item replace entity @s container.13 from block 10000 -64 10000 container.13
    execute if data storage sketch:temp Items[{Slot:14b}] run item replace entity @s container.14 from block 10000 -64 10000 container.14
    execute if data storage sketch:temp Items[{Slot:15b}] run item replace entity @s container.15 from block 10000 -64 10000 container.15
    execute if data storage sketch:temp Items[{Slot:16b}] run item replace entity @s container.16 from block 10000 -64 10000 container.16
    execute if data storage sketch:temp Items[{Slot:17b}] run item replace entity @s container.17 from block 10000 -64 10000 container.17
    execute if data storage sketch:temp Items[{Slot:18b}] run item replace entity @s container.18 from block 10000 -64 10000 container.18
    execute if data storage sketch:temp Items[{Slot:19b}] run item replace entity @s container.19 from block 10000 -64 10000 container.19
    execute if data storage sketch:temp Items[{Slot:20b}] run item replace entity @s container.20 from block 10000 -64 10000 container.20
    execute if data storage sketch:temp Items[{Slot:21b}] run item replace entity @s container.21 from block 10000 -64 10000 container.21
    execute if data storage sketch:temp Items[{Slot:22b}] run item replace entity @s container.22 from block 10000 -64 10000 container.22
    execute if data storage sketch:temp Items[{Slot:23b}] run item replace entity @s container.23 from block 10000 -64 10000 container.23
    execute if data storage sketch:temp Items[{Slot:24b}] run item replace entity @s container.24 from block 10000 -64 10000 container.24
    execute if data storage sketch:temp Items[{Slot:25b}] run item replace entity @s container.25 from block 10000 -64 10000 container.25
    execute if data storage sketch:temp Items[{Slot:26b}] run item replace entity @s container.26 from block 10000 -64 10000 container.26

# 最後に設定されたインベントリとしてOhMyDatに保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInv set from storage sketch:temp Items

# リセット
    data remove storage sketch:temp Items
