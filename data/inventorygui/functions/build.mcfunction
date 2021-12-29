#> inventorygui:build
#
# 設定されたアイテムをビルドします
#
# @api

# ビルド
    ## 接続
        function inventorygui:connect

    ## ビルド
        execute as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt, limit=1] run function inventorygui:core/build

    ## 切断
        function inventorygui:disconnect
