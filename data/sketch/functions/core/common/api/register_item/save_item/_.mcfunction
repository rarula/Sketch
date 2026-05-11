#> sketch:core/common/api/register_item/save_item/_
#
# Save specified item in the storage shulker box
#
# @input
#   vector 10000 0 10000
#       container.0
#           Item to save
#   storage sketch:temp
#       TargetSlot: byte
#           Slot to save
#
# @within function sketch:core/**

# Save in storage shulker box (macro: container slot = TargetSlot)
    function sketch:core/common/api/register_item/save_item/place with storage sketch:temp

# Reset
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage sketch:temp TargetSlot
