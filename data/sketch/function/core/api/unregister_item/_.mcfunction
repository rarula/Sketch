#> sketch:core/api/unregister_item/_
#
# @input
#   storage sketch: in
#       key: string
#
# @within function sketch:api/unregister_item

# Mapから削除
    data modify storage sketch:util in.key set from storage sketch: in.key
    data modify storage sketch:util in.map set from storage sketch:core GlobalItemInfoMap
    function sketch:util/map/delete

# GlobalItemInfoMapに上書き
    data modify storage sketch:core GlobalItemInfoMap set from storage sketch:util out.map
    function sketch:util/cleanup

# リセット
    data remove storage sketch: in
