#> sketch:core/load
#
# load時に呼び出される
#
# @within tag/function minecraft:load

# データパックが未初期化であれば初期化
    execute unless data storage sketch: {Version:"1.0.1"} run function sketch:core/load_once
