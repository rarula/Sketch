#> sketch:core/common/api/build/get_item/b-3/7
# @within function sketch:core/common/api/build/get_item/b-2/3

execute if score $TargetSlot Sketch matches 24..25 run function sketch:core/common/api/build/get_item/b-4/10
execute if score $TargetSlot Sketch matches 26 run item replace block 10000 0 10000 container.0 from block ~ ~ ~ container.26
