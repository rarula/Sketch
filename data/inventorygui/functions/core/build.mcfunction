#> inventorygui:core/build
# @within function inventorygui:build

# インベントリを初期化
    item replace entity @s container.0 with minecraft:air
    item replace entity @s container.1 with minecraft:air
    item replace entity @s container.2 with minecraft:air
    item replace entity @s container.3 with minecraft:air
    item replace entity @s container.4 with minecraft:air
    item replace entity @s container.5 with minecraft:air
    item replace entity @s container.6 with minecraft:air
    item replace entity @s container.7 with minecraft:air
    item replace entity @s container.8 with minecraft:air
    item replace entity @s container.9 with minecraft:air
    item replace entity @s container.10 with minecraft:air
    item replace entity @s container.11 with minecraft:air
    item replace entity @s container.12 with minecraft:air
    item replace entity @s container.13 with minecraft:air
    item replace entity @s container.14 with minecraft:air
    item replace entity @s container.15 with minecraft:air
    item replace entity @s container.16 with minecraft:air
    item replace entity @s container.17 with minecraft:air
    item replace entity @s container.18 with minecraft:air
    item replace entity @s container.19 with minecraft:air
    item replace entity @s container.20 with minecraft:air
    item replace entity @s container.21 with minecraft:air
    item replace entity @s container.22 with minecraft:air
    item replace entity @s container.23 with minecraft:air
    item replace entity @s container.24 with minecraft:air
    item replace entity @s container.25 with minecraft:air
    item replace entity @s container.26 with minecraft:air

# アイテムを設定
    execute in minecraft:overworld run item replace entity @s container.0 from block 1 1 1 container.0 inventorygui:slot/0
    execute in minecraft:overworld run item replace entity @s container.1 from block 1 1 1 container.1 inventorygui:slot/1
    execute in minecraft:overworld run item replace entity @s container.2 from block 1 1 1 container.2 inventorygui:slot/2
    execute in minecraft:overworld run item replace entity @s container.3 from block 1 1 1 container.3 inventorygui:slot/3
    execute in minecraft:overworld run item replace entity @s container.4 from block 1 1 1 container.4 inventorygui:slot/4
    execute in minecraft:overworld run item replace entity @s container.5 from block 1 1 1 container.5 inventorygui:slot/5
    execute in minecraft:overworld run item replace entity @s container.6 from block 1 1 1 container.6 inventorygui:slot/6
    execute in minecraft:overworld run item replace entity @s container.7 from block 1 1 1 container.7 inventorygui:slot/7
    execute in minecraft:overworld run item replace entity @s container.8 from block 1 1 1 container.8 inventorygui:slot/8
    execute in minecraft:overworld run item replace entity @s container.9 from block 1 1 1 container.9 inventorygui:slot/9
    execute in minecraft:overworld run item replace entity @s container.10 from block 1 1 1 container.10 inventorygui:slot/10
    execute in minecraft:overworld run item replace entity @s container.11 from block 1 1 1 container.11 inventorygui:slot/11
    execute in minecraft:overworld run item replace entity @s container.12 from block 1 1 1 container.12 inventorygui:slot/12
    execute in minecraft:overworld run item replace entity @s container.13 from block 1 1 1 container.13 inventorygui:slot/13
    execute in minecraft:overworld run item replace entity @s container.14 from block 1 1 1 container.14 inventorygui:slot/14
    execute in minecraft:overworld run item replace entity @s container.15 from block 1 1 1 container.15 inventorygui:slot/15
    execute in minecraft:overworld run item replace entity @s container.16 from block 1 1 1 container.16 inventorygui:slot/16
    execute in minecraft:overworld run item replace entity @s container.17 from block 1 1 1 container.17 inventorygui:slot/17
    execute in minecraft:overworld run item replace entity @s container.18 from block 1 1 1 container.18 inventorygui:slot/18
    execute in minecraft:overworld run item replace entity @s container.19 from block 1 1 1 container.19 inventorygui:slot/19
    execute in minecraft:overworld run item replace entity @s container.20 from block 1 1 1 container.20 inventorygui:slot/20
    execute in minecraft:overworld run item replace entity @s container.21 from block 1 1 1 container.21 inventorygui:slot/21
    execute in minecraft:overworld run item replace entity @s container.22 from block 1 1 1 container.22 inventorygui:slot/22
    execute in minecraft:overworld run item replace entity @s container.23 from block 1 1 1 container.23 inventorygui:slot/23
    execute in minecraft:overworld run item replace entity @s container.24 from block 1 1 1 container.24 inventorygui:slot/24
    execute in minecraft:overworld run item replace entity @s container.25 from block 1 1 1 container.25 inventorygui:slot/25
    execute in minecraft:overworld run item replace entity @s container.26 from block 1 1 1 container.26 inventorygui:slot/26

# OhMyDat
    function #oh_my_dat:please

# データを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.Items set from block 1 1 1 Items

# 初期化
    execute in minecraft:overworld run item replace block 1 1 1 container.0 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.1 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.2 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.3 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.4 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.5 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.6 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.7 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.8 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.9 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.10 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.11 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.12 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.13 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.14 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.15 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.16 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.17 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.18 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.19 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.20 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.21 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.22 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.23 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.24 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.25 with minecraft:air
    execute in minecraft:overworld run item replace block 1 1 1 container.26 with minecraft:air
