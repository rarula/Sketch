#> sketch:core/handler/on_drop/player/found
#
# アイテムをドロップしたプレイヤーに対する処理
#
# @within function sketch:core/handler/on_drop/player/check_uuid

# コールバック
    data modify storage sketch: out.type set value "DROP"
    function sketch:core/common/select

# リセット
    scoreboard players remove @s SketchDrop 1
