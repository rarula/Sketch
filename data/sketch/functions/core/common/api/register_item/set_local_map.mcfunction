#> sketch:core/common/api/register_item/set_local_map
#
# Set in LocalItemInfoMap
#
# @input
#   storage sketch:temp
#       ItemInfo: LocalItemInfo
#           Value of the element to set
#
# @within function sketch:core/api/register_item/*/register_local_item

# Create Map
    data modify storage sketch:util in.key set from storage sketch:data in.key
    data modify storage sketch:util in.value set from storage sketch:temp ItemInfo
    data modify storage sketch:util in.map set from storage sketch:core LocalItemInfoMap
    function sketch:util/map/set

# Overwrite in LocalItemInfoMap
    data modify storage sketch:core LocalItemInfoMap set from storage sketch:util out.map
    function sketch:util/cleanup


# Reset
    data remove storage sketch:temp ItemInfo
