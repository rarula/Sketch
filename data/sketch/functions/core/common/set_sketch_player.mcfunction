#> sketch:core/common/set_sketch_player
#
# 実行者のチェスト付きトロッコを開いているプレイヤーに、 Sketch.Player タグを設定する
#
# @within function sketch:core/**

#>
# @private
    #declare tag Sketch.this

# 開いているチェスト付きトロッコを特定
    tag @s add Sketch.this
    execute as @a if score @s Sketch.Id = @e[type=minecraft:chest_minecart, tag=Sketch.this, limit=1] Sketch.Id run tag @s add Sketch.Player
    tag @s remove Sketch.this
