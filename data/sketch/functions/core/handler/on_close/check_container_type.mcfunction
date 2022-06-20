#> sketch:core/handler/on_close/check_container_type
#
# コンテナを閉じた可能性のあるプレイヤーに対する処理
#
# @within tag/function close_detector:on_closed

# メニューを表示中のプレイヤーが開いていたコンテナが、Sketchに登録済みのチェスト付きトロッコであればコールバック
    execute if entity @s[tag=Sketch.InMenu] if predicate open:chest_minecart run function sketch:core/handler/on_close/_
