#> sketch:core/common/api/build/place_item/_
#
# Place specified item in the creation shulker box
#
# @input
#   vector 10000 0 10000
#       container.0
#           Item to place
#   storage sketch:temp
#       TargetSlot: byte
#           Slot to place in
#
# @within function sketch:core/**

# Place in creation shulker box (macro: container slot = TargetSlot)
    function sketch:core/common/api/build/place_item/put with storage sketch:temp

# Reset
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage sketch:temp TargetSlot
