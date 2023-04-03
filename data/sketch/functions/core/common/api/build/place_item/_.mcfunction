#> sketch:core/common/api/build/place_item/_
#
# 指定されたアイテムを作成用シュルカーボックスに配置する
#
# @input
#   vector 10000 0 10000
#       container.0
#           配置するアイテム
#   storage sketch:temp
#       TargetSlot: byte
#           配置するスロット
#
# @within function sketch:core/**

#>
# @within function sketch:core/common/api/build/place_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot Sketch run data get storage sketch:temp TargetSlot

# 作成用シュルカーボックスに配置
    execute positioned 10000 2 10000 run function sketch:core/common/api/build/place_item/b-0/0

# リセット
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot Sketch
    data remove storage sketch:temp TargetSlot
