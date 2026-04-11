#> sketch:core/common/api/build/get_item/_
#
# 指定されたアイテムを保存用シュルカーボックスから取得する
#
# @input
#   storage sketch:temp
#       TargetSlot: byte
#           取得するスロット
#
# @output
#   vector 10000 0 10000
#       container.0
#           取得したアイテム
#
# @within function sketch:core/**

#>
# @within function sketch:core/common/api/build/get_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot Sketch run data get storage sketch:temp TargetSlot

# 保存用シュルカーボックスから取得
    execute positioned 10000 1 10000 run function sketch:core/common/api/build/get_item/b-0/0


# リセット
    scoreboard players reset $TargetSlot Sketch
    data remove storage sketch:temp TargetSlot
