#> sketch:core/load/_
#
# load時に呼び出される
#
# @within tag/function minecraft:load

# データパックが初期化済みであるか確認
    execute unless data storage sketch: Initialized run function sketch:core/load/init
