#> sketch:core/handler/on_close/_
#
# コンテナを閉じたときに呼び出される
#
# @within function sketch:core/handler/on_close/check_container_type

## 前処理
function sketch:api/link

execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function #oh_my_dat:please

# インベントリのデータを取得
    data modify storage sketch:temp Inv set from entity @e[type=minecraft:chest_minecart, tag=SketchTarget, limit=1] Items

function sketch:api/unlink


## メイン処理
# コールバック時に渡すデータを設定
    data remove storage sketch:temp Inv[{tag:{Sketch:{}}}]
    data modify storage sketch: out.unknownItems set from storage sketch:temp Inv

# コールバック
    function #sketch:on_close


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp Inv
