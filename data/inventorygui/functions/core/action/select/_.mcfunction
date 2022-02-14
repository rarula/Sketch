#> inventorygui:core/action/select/_
#
# アイテム選択時に呼び出される
#
# @within function inventorygui:core/action/select/check

#>
# @within inventorygui:core/action/select/**
#declare storage inventorygui:core/action/select

# idを設定
    ## 接続
        function inventorygui:api/link

    ## OhMyDat
        execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function #oh_my_dat:please

    ## インベントリ取得
        data modify storage inventorygui:core/action/select Items set from entity @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] Items

    ## 選択スロット探索
        function inventorygui:core/action/select/search/_
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InventoryGui.id set from storage inventorygui: id

    ## 切断
        function inventorygui:api/unlink

# 選択アイテム削除
    clear @s #inventorygui:all{InventoryGui:{Button:true}}

# コールバック
    function #inventorygui:callback
