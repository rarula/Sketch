#> sketch:core/common/api/register_item/save_item/_
#
# 指定されたアイテムを保存用シュルカーボックスに保存する
#
# @input
#   vector 10000 0 10000
#       container.0
#           保存するアイテム
#   storage sketch:temp
#       TargetSlot: byte
#           保存するスロット
#
# @within function sketch:core/**

#>
# @within function sketch:core/common/api/register_item/save_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot Sketch run data get storage sketch:temp TargetSlot

# 保存用シュルカーボックスに保存
    execute positioned 10000 1 10000 run function sketch:core/common/api/register_item/save_item/b-0/0


# リセット
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot Sketch
    data remove storage sketch:temp TargetSlot
