#> sketch:core/common/api/build/place_item/b-4/0
# @within function sketch:core/common/api/build/place_item/b-3/0

execute if score $TargetSlot Sketch matches 0 run item replace block ~ ~ ~ container.0 from block 10000 0 10000 container.0
execute if score $TargetSlot Sketch matches 1 run item replace block ~ ~ ~ container.1 from block 10000 0 10000 container.0
