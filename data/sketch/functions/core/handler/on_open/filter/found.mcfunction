#> sketch:core/handler/on_open/filter/found
#
# インタラクトされたチェスト付きトロッコに対する処理
#
# @within function sketch:core/handler/on_open/filter/0

# インタラクトしてきたプレイヤーに自身のIdを割り当てる
    scoreboard players operation @a[tag=Sketch.onInteract.this] SketchId = @s SketchId
