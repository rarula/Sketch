#> sketch:core/select/_
#
# 選択処理
#
# @input
#   storage sketch:
#       out.selectionType: "CLICK" | "DROP"
#
# @within function
#   sketch:core/handler/on_click/_
#   sketch:core/handler/on_drop/player/found

#>
# @within sketch:core/select/**
    #declare score_holder $NewSlot
    #declare score_holder $NewLength
    #declare score_holder $LastSlot
    #declare score_holder $LastLength
    #declare score_holder $TotalLength

## 前処理
function sketch:api/link

execute as @e[type=minecraft:chest_minecart, tag=SketchTarget] run function #oh_my_dat:please

# 選択前のインベントリのデータを取得
    data modify storage sketch:temp LastInv set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.LastInv

# 選択後のインベントリのデータを取得
    data modify storage sketch:temp NewInv set from entity @e[type=minecraft:chest_minecart, tag=SketchTarget, limit=1] Items

function sketch:api/unlink


## メイン処理
# 選択後のインベントリのデータをコピー
    data modify storage sketch:temp CloneNewInv set from storage sketch:temp NewInv

# スロットに変更があるかを確認
    execute store result score $NewLength Sketch if data storage sketch:temp NewInv[]
    execute store result score $LastLength Sketch if data storage sketch:temp LastInv[]
    function sketch:core/select/loop

# idを更新
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id set from storage sketch: out.selectedItem.tag.Sketch.id

# コールバック時に渡すデータを設定
    data remove storage sketch:temp CloneNewInv[{tag:{Sketch:{}}}]
    data modify storage sketch: out.otherItems set from storage sketch:temp CloneNewInv
    data modify storage sketch: out.id set from storage sketch: out.selectedItem.tag.Sketch.id

# コールバック
    execute at @s run function #sketch:on_select


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp LastInv
    data remove storage sketch:temp NewInv
    data remove storage sketch:temp CloneNewInv
    data remove storage sketch:temp Success
    scoreboard players reset $NewSlot
    scoreboard players reset $NewLength
    scoreboard players reset $LastSlot
    scoreboard players reset $LastLength
    scoreboard players reset $TotalLength
