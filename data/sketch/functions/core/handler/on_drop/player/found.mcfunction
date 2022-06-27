#> sketch:core/handler/on_drop/player/found
#
# アイテムをドロップしたプレイヤーに対する処理
#
# @within function sketch:core/handler/on_drop/player/check_uuid

# コールバック
    data modify storage sketch: out.selectionType set value "DROP"
    function sketch:core/select/_

# リセット
    scoreboard players remove @s SketchDrop 1
