#> sketch:core/handler/on_interact/filter/found
#
# インタラクトされたチェスト付きトロッコに対する処理
#
# @within function sketch:core/handler/on_interact/filter/0

# インタラクトしてきたプレイヤーに自身のIdを割り当てる
    scoreboard players operation @a[tag=Sketch.onInteract.this] SketchId = @s SketchId

# OhItsDatを使って外部からOhMyDatを呼び出すため、ここで自身のOhMyDatIDを取得
    execute store result storage sketch:temp OhMyDatID int 1.0 run scoreboard players get @s OhMyDatID
