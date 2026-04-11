#> sketch:core/common/api/build/get_item/b-3/3
# @within function sketch:core/common/api/build/get_item/b-2/1

execute if score $TargetSlot Sketch matches 11..12 run function sketch:core/common/api/build/get_item/b-4/5
execute if score $TargetSlot Sketch matches 13 run item replace block 10000 0 10000 container.0 from block ~ ~ ~ container.13
