#> inventorygui:core/action/check
# @within function inventorygui:core/tick

# 未実行であれば実行
    execute unless data storage inventorygui:core {isExecuted:true} run function inventorygui:core/action/tick
