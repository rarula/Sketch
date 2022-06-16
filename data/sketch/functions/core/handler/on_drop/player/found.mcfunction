#> sketch:core/handler/on_drop/player/found
#
# アイテムをドロップしたプレイヤーに対する処理
#
# @within function sketch:core/handler/on_drop/player/check_uuid

## 前処理
# 紐付け
    function sketch:api/link

# idを取得 (OhMyDat)
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.LinkingEntity] run function #oh_my_dat:please

# 紐付けを解除
    function sketch:api/unlink


## メイン処理
# idを設定
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage sketch:temp ItemData.Item.tag.Sketch.id
    data modify storage sketch: out.id set from storage sketch:temp ItemData.Item.tag.Sketch.id

# コールバック
    execute at @s run function #sketch:on_click


## 後処理
# リセット
    data remove storage sketch: out

# ドロップした回数を減らす
    scoreboard players remove @s SketchDrop 1
