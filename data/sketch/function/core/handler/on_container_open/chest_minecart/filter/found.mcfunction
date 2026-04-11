#> sketch:core/handler/on_container_open/chest_minecart/filter/found
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/0

## Sketch.Target を設定
    tag @s add Sketch.Target


# 開いたプレイヤーに自身のSketch.Idをコピー
    scoreboard players operation @a[tag=Sketch.this] Sketch.Id = @s Sketch.Id
