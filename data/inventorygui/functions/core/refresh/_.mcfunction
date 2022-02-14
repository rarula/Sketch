#> inventorygui:core/refresh/_
# @within function inventorygui:api/refresh

function inventorygui:api/link

# インベントリを初期化
    loot replace entity @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] container.0 255 loot inventorygui:air

function inventorygui:api/unlink
