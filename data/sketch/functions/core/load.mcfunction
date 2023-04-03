#> sketch:core/load
#
# load時に実行される
#
# @within tag/function minecraft:load

# 初回ロード時実行
    execute unless data storage sketch: {Version:"2.0.0"} run function sketch:core/load_once
