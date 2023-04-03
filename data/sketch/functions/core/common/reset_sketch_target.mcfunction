#> sketch:core/common/reset_sketch_target
#
# Sketch.Target タグを削除する
#
# @within function sketch:core/**

# タグを削除
    tag @e[type=minecraft:chest_minecart, tag=Sketch.Target] remove Sketch.Target
