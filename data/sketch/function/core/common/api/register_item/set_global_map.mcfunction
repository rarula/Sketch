#> sketch:core/common/api/register_item/set_global_map
#
# GlobalItemInfoMapに設定する
#
# @input
#   storage sketch:temp
#       ItemInfo: GlobalItemInfo
#           設定する要素の値
#
# @within function sketch:core/api/register_item/*/register_global_item

# Mapを作成
    data modify storage sketch:util in.key set from storage sketch: in.key
    data modify storage sketch:util in.value set from storage sketch:temp ItemInfo
    data modify storage sketch:util in.map set from storage sketch:core GlobalItemInfoMap
    function sketch:util/map/set

# GlobalItemInfoMapに上書き
    data modify storage sketch:core GlobalItemInfoMap set from storage sketch:util out.map
    function sketch:util/cleanup


# リセット
    data remove storage sketch:temp ItemInfo
