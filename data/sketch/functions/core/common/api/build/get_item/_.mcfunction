#> sketch:core/common/api/build/get_item/_
#
# Retrieve specified item from the storage shulker box
#
# @input
#   storage sketch:temp
#       TargetSlot: byte
#           Slot to get
#
# @output
#   vector 10000 0 10000
#       container.0
#           Retrieved item
#
# @within function sketch:core/**

# Retrieve from storage shulker box (macro: container slot = TargetSlot)
    function sketch:core/common/api/build/get_item/fetch with storage sketch:temp

# Reset
    data remove storage sketch:temp TargetSlot
