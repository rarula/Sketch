#> sketch:core/common/select
#
# 汎用コールバック処理
#
# @input
#   storage sketch:
#       out.selectionType : string ("CLICK", "DROP")
#
# @within function
#   sketch:core/handler/on_click/_
#   sketch:core/handler/on_drop/player/found

## 前処理
function sketch:api/link

execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function #oh_my_dat:please

# 選択前のインベントリのデータを取得
    data modify storage sketch:temp LastInv set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInv

# 選択後のインベントリのデータを取得
    data modify storage sketch:temp NewInv set from entity @e[type=minecraft:chest_minecart, tag=SketchTarget, limit=1] Items

function sketch:api/unlink


## メイン処理
# 変更のあったスロットを確認しそれぞれの処理へ
    data modify storage sketch:temp CloneNewInv set from storage sketch:temp NewInv

    execute if data storage sketch:temp LastInv[{Slot:0b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:0b}] run data modify storage sketch:temp NewInv append value {Slot:0b}
    execute if data storage sketch:temp LastInv[{Slot:0b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:0b}] set from storage sketch:temp LastInv[{Slot:0b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:0b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:1b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:1b}] run data modify storage sketch:temp NewInv append value {Slot:1b}
    execute if data storage sketch:temp LastInv[{Slot:1b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:1b}] set from storage sketch:temp LastInv[{Slot:1b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:1b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:2b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:2b}] run data modify storage sketch:temp NewInv append value {Slot:2b}
    execute if data storage sketch:temp LastInv[{Slot:2b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:2b}] set from storage sketch:temp LastInv[{Slot:2b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:2b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:3b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:3b}] run data modify storage sketch:temp NewInv append value {Slot:3b}
    execute if data storage sketch:temp LastInv[{Slot:3b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:3b}] set from storage sketch:temp LastInv[{Slot:3b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:3b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:4b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:4b}] run data modify storage sketch:temp NewInv append value {Slot:4b}
    execute if data storage sketch:temp LastInv[{Slot:4b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:4b}] set from storage sketch:temp LastInv[{Slot:4b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:4b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:5b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:5b}] run data modify storage sketch:temp NewInv append value {Slot:5b}
    execute if data storage sketch:temp LastInv[{Slot:5b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:5b}] set from storage sketch:temp LastInv[{Slot:5b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:5b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:6b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:6b}] run data modify storage sketch:temp NewInv append value {Slot:6b}
    execute if data storage sketch:temp LastInv[{Slot:6b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:6b}] set from storage sketch:temp LastInv[{Slot:6b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:6b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:7b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:7b}] run data modify storage sketch:temp NewInv append value {Slot:7b}
    execute if data storage sketch:temp LastInv[{Slot:7b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:7b}] set from storage sketch:temp LastInv[{Slot:7b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:7b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:8b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:8b}] run data modify storage sketch:temp NewInv append value {Slot:8b}
    execute if data storage sketch:temp LastInv[{Slot:8b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:8b}] set from storage sketch:temp LastInv[{Slot:8b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:8b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:9b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:9b}] run data modify storage sketch:temp NewInv append value {Slot:9b}
    execute if data storage sketch:temp LastInv[{Slot:9b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:9b}] set from storage sketch:temp LastInv[{Slot:9b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:9b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:10b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:10b}] run data modify storage sketch:temp NewInv append value {Slot:10b}
    execute if data storage sketch:temp LastInv[{Slot:10b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:10b}] set from storage sketch:temp LastInv[{Slot:10b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:10b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:11b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:11b}] run data modify storage sketch:temp NewInv append value {Slot:11b}
    execute if data storage sketch:temp LastInv[{Slot:11b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:11b}] set from storage sketch:temp LastInv[{Slot:11b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:11b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:12b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:12b}] run data modify storage sketch:temp NewInv append value {Slot:12b}
    execute if data storage sketch:temp LastInv[{Slot:12b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:12b}] set from storage sketch:temp LastInv[{Slot:12b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:12b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:13b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:13b}] run data modify storage sketch:temp NewInv append value {Slot:13b}
    execute if data storage sketch:temp LastInv[{Slot:13b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:13b}] set from storage sketch:temp LastInv[{Slot:13b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:13b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:14b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:14b}] run data modify storage sketch:temp NewInv append value {Slot:14b}
    execute if data storage sketch:temp LastInv[{Slot:14b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:14b}] set from storage sketch:temp LastInv[{Slot:14b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:14b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:15b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:15b}] run data modify storage sketch:temp NewInv append value {Slot:15b}
    execute if data storage sketch:temp LastInv[{Slot:15b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:15b}] set from storage sketch:temp LastInv[{Slot:15b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:15b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:16b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:16b}] run data modify storage sketch:temp NewInv append value {Slot:16b}
    execute if data storage sketch:temp LastInv[{Slot:16b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:16b}] set from storage sketch:temp LastInv[{Slot:16b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:16b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:17b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:17b}] run data modify storage sketch:temp NewInv append value {Slot:17b}
    execute if data storage sketch:temp LastInv[{Slot:17b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:17b}] set from storage sketch:temp LastInv[{Slot:17b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:17b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:18b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:18b}] run data modify storage sketch:temp NewInv append value {Slot:18b}
    execute if data storage sketch:temp LastInv[{Slot:18b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:18b}] set from storage sketch:temp LastInv[{Slot:18b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:18b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:19b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:19b}] run data modify storage sketch:temp NewInv append value {Slot:19b}
    execute if data storage sketch:temp LastInv[{Slot:19b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:19b}] set from storage sketch:temp LastInv[{Slot:19b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:19b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:20b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:20b}] run data modify storage sketch:temp NewInv append value {Slot:20b}
    execute if data storage sketch:temp LastInv[{Slot:20b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:20b}] set from storage sketch:temp LastInv[{Slot:20b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:20b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:21b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:21b}] run data modify storage sketch:temp NewInv append value {Slot:21b}
    execute if data storage sketch:temp LastInv[{Slot:21b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:21b}] set from storage sketch:temp LastInv[{Slot:21b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:21b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:22b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:22b}] run data modify storage sketch:temp NewInv append value {Slot:22b}
    execute if data storage sketch:temp LastInv[{Slot:22b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:22b}] set from storage sketch:temp LastInv[{Slot:22b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:22b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:23b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:23b}] run data modify storage sketch:temp NewInv append value {Slot:23b}
    execute if data storage sketch:temp LastInv[{Slot:23b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:23b}] set from storage sketch:temp LastInv[{Slot:23b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:23b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:24b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:24b}] run data modify storage sketch:temp NewInv append value {Slot:24b}
    execute if data storage sketch:temp LastInv[{Slot:24b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:24b}] set from storage sketch:temp LastInv[{Slot:24b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:24b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:25b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:25b}] run data modify storage sketch:temp NewInv append value {Slot:25b}
    execute if data storage sketch:temp LastInv[{Slot:25b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:25b}] set from storage sketch:temp LastInv[{Slot:25b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:25b}]
    data remove storage sketch:temp Success

    execute if data storage sketch:temp LastInv[{Slot:26b, tag:{Sketch:{}}}] unless data storage sketch:temp NewInv[{Slot:26b}] run data modify storage sketch:temp NewInv append value {Slot:26b}
    execute if data storage sketch:temp LastInv[{Slot:26b, tag:{Sketch:{}}}] store success storage sketch:temp Success byte 1.0 run data modify storage sketch:temp NewInv[{Slot:26b}] set from storage sketch:temp LastInv[{Slot:26b}]
    execute if data storage sketch:temp {Success:true} run data modify storage sketch: out.selectedItem set from storage sketch:temp LastInv[{Slot:26b}]
    data remove storage sketch:temp Success

# idを更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage sketch: out.selectedItem.tag.Sketch.id

# コールバック時に渡すデータを設定
    data remove storage sketch:temp CloneNewInv[{tag:{Sketch:{}}}]
    data modify storage sketch: out.unknownItems set from storage sketch:temp CloneNewInv
    data modify storage sketch: out.id set from storage sketch: out.selectedItem.tag.Sketch.id

# コールバック
    execute at @s run function #sketch:on_select


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp LastInv
    data remove storage sketch:temp NewInv
    data remove storage sketch:temp CloneNewInv
