#> example:inventorygui/gui/close/_
# @within function example:inventorygui/gui/close/check

# 画面を閉じる
    ## 接続
        function inventorygui:connect

    ## 閉じる
        execute at @s as @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt] run tp @s ~ ~-100 ~
        kill @e[type=minecraft:chest_minecart, tag=InvGui.ConnectingAt]

    ## デバッグ用 (復活)
        execute at @s run function example:inventorygui/register/main

    ## 切断
        function inventorygui:disconnect
