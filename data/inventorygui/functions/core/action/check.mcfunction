#> inventorygui:core/action/check
# @within function inventorygui:core/tick

# 未実行であれば実行
    execute unless entity @s[tag=InvGui.CheckedPlayer] run function inventorygui:core/action/tick
