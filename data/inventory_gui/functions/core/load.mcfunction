#> inventory_gui:core/load
#
# load時に実行される
#
# @within tag/function minecraft:load

# 初回ロード時ではデータパックを初期化
    execute unless data storage inventory_gui: Initialized run function inventory_gui:core/init
