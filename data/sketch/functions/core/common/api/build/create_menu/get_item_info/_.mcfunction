#> sketch:core/common/api/build/create_menu/get_item_info/_
#
# Return ItemInfo for the specified key
#
# @input
#   storage sketch:temp
#       Key: string
#           Key of the element to get
#
# @output
#   storage sketch:temp
#       ItemInfo: ItemInfo
#           Retrieved ItemInfo
#       isGlobalItemInfo: boolean
#           Whether it is GlobalItemInfo
#
# @within function sketch:core/common/api/build/create_menu/set_item/_

# Get from LocalItemInfoMap
    function sketch:core/common/api/build/create_menu/get_item_info/from_local_map

# Get from GlobalItemInfoMap
    execute if data storage sketch:util out{contains:false} run function sketch:core/common/api/build/create_menu/get_item_info/from_global_map


# Initialize util
    function sketch:util/cleanup

# Reset
    data remove storage sketch:temp Key
