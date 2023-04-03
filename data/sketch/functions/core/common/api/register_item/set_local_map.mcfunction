#> sketch:core/common/api/register_item/set_local_map
#
# LocalItemInfoMapに設定する
#
# @input
#   storage sketch:temp
#       ItemInfo: LocalItemInfo
#           設定する要素の値
#
# @within function sketch:core/api/register_item/*/register_local_item

# Mapを作成
    data modify storage sketch:util in.key set from storage sketch: in.key
    data modify storage sketch:util in.value set from storage sketch:temp ItemInfo
    data modify storage sketch:util in.map set from storage sketch:core LocalItemInfoMap
    function sketch:util/map/set

# LocalItemInfoMapに上書き
    data modify storage sketch:core LocalItemInfoMap set from storage sketch:util out.map
    function sketch:util/cleanup


# リセット
    data remove storage sketch:temp ItemInfo
