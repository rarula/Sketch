#> sketch:core/common/sketch_target/reset
#
# Sketch.Target タグを削除する
#
# @within function sketch:core/**

# タグを削除
    tag @e[type=minecraft:chest_minecart, tag=Sketch.Target] remove Sketch.Target
