#> inventorygui:core/load
# @within tag/function minecraft:load

# 初回ロード時ではデータパックを初期化
    execute unless data storage inventorygui: Initialized run function inventorygui:core/load_once
