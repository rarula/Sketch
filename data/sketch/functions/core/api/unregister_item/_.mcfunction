#> sketch:core/api/unregister_item/_
#
# @input
#   storage sketch:data in
#       key: string
#
# @within function sketch:api/unregister_item

# Delete from Map
    data modify storage sketch:util in.key set from storage sketch:data in.key
    data modify storage sketch:util in.map set from storage sketch:core GlobalItemInfoMap
    function sketch:util/map/delete

# Overwrite in GlobalItemInfoMap
    data modify storage sketch:core GlobalItemInfoMap set from storage sketch:util out.map
    function sketch:util/cleanup

# Reset
    data remove storage sketch:data in
