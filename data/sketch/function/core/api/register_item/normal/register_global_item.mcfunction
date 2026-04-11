#> sketch:core/api/register_item/normal/register_global_item
# @within function sketch:core/api/register_item/normal/_

# GlobalItemInfoを構成
    data modify storage sketch:temp ItemInfo.ItemType set from storage sketch:temp ItemType
    data modify storage sketch:temp ItemInfo.Item set value {id:"minecraft:air", Slot:0b}
    data modify storage sketch:temp ItemInfo.Item set from block 10000 0 10000 Items[{Slot:0b}]

# GlobalItemInfoMapに設定
    function sketch:core/common/api/register_item/set_global_map
