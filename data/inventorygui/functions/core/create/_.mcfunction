#> inventorygui:core/create/_
# @within function inventorygui:api/create

function inventorygui:api/link

# アイテムを配置
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function inventorygui:core/create/set_item

function inventorygui:api/unlink
