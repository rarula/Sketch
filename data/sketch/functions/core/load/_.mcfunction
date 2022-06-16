#> sketch:core/load/_
#
# load時に呼び出される
#
# @within tag/function minecraft:load

# データパックが初期化済みであるか確認
    execute unless data storage sketch: {Version:"0.1.0"} run function sketch:core/load/init
