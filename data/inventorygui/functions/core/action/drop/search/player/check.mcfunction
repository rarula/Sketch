#> inventorygui:core/action/drop/search/player/check
# @within function inventorygui:core/action/drop/_

# 未発見であれば実行
    execute unless data storage inventorygui:core/action/drop _{Success:false} run function inventorygui:core/action/drop/search/player/_
