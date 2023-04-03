#> sketch:core/common/api/build/get_item/b-2/0
# @within function sketch:core/common/api/build/get_item/b-1/0

execute if score $TargetSlot Sketch matches 0..3 run function sketch:core/common/api/build/get_item/b-3/0
execute if score $TargetSlot Sketch matches 4..6 run function sketch:core/common/api/build/get_item/b-3/1
