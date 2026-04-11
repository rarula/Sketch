#> sketch:core/common/sketch_target/set
#
# 実行者のプレイヤーが開いているチェスト付きトロッコに、 Sketch.Target タグを設定する
#
# @within function sketch:core/**

#>
# @private
    #declare tag Sketch.this

# 開いているチェスト付きトロッコを特定
    tag @s add Sketch.this
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.Entity] if score @s Sketch.Id = @a[tag=Sketch.this, limit=1] Sketch.Id run tag @s add Sketch.Target
    tag @s remove Sketch.this
