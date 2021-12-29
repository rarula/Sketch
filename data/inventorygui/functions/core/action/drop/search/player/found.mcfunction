#> inventorygui:core/action/drop/search/player/found
# @within function inventorygui:core/action/drop/search/player/_

# idを設定
    ## 接続
        function inventorygui:connect

    ## OhMyDat
        execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function #oh_my_dat:please

    ## idを設定
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id set from storage inventorygui:core/action/drop _.DroppedItemData.Item.tag.InventoryGui.id
        data modify storage inventorygui: id set from storage inventorygui:core/action/drop _.DroppedItemData.Item.tag.InventoryGui.id

    ## 切断
        function inventorygui:disconnect

# コールバック
    function #inventorygui:callback

# リセット
    scoreboard players remove @s InventoryGuiDrop 1
