#> sketch:core/common/api/build/create_menu/get_item_info/from_local_map
# @within function sketch:core/common/api/build/create_menu/get_item_info/_

# Get registered element (LocalItemInfoMap)
    data modify storage sketch:util in.map set from storage sketch:core LocalItemInfoMap
    data modify storage sketch:util in.key set from storage sketch:temp Key
    function sketch:util/map/get


# Return retrieved ItemInfo
    execute if data storage sketch:util out{contains:true} run data modify storage sketch:temp ItemInfo set from storage sketch:util out.value

# Return whether it is GlobalItemInfo
    execute if data storage sketch:util out{contains:true} run data modify storage sketch:temp isGlobalItemInfo set value false
