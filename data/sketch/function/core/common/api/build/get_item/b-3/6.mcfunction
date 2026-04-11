#> sketch:core/common/api/build/get_item/b-3/6
# @within function sketch:core/common/api/build/get_item/b-2/3

execute if score $TargetSlot Sketch matches 21..22 run function sketch:core/common/api/build/get_item/b-4/9
execute if score $TargetSlot Sketch matches 23 run item replace block 10000 0 10000 container.0 from block ~ ~ ~ container.23
