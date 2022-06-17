#> sketch:core/handler/on_drop/player/found
#
# アイテムをドロップしたプレイヤーに対する処理
#
# @within function sketch:core/handler/on_drop/player/check_uuid

## 前処理
function sketch:api/link

execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function #oh_my_dat:please

function sketch:api/unlink


## メイン処理
# idを最新のデータに更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage sketch:temp ItemData.Item.tag.Sketch.id

# コールバック時に渡すデータを設定
    data modify storage sketch: out.id set from storage sketch:temp ItemData.Item.tag.Sketch.id

# コールバック
    execute at @s run function #sketch:on_click


## 後処理
# リセット
    scoreboard players remove @s SketchDrop 1
    data remove storage sketch: out
