#> sketch:core/api/register_item/variable/register_local_item
# @within function sketch:core/api/register_item/variable/_

# LocalItemInfoを構成
    data modify storage sketch:temp ItemInfo.ItemType set from storage sketch:temp ItemType
    data modify storage sketch:temp ItemInfo.Slot set value 0b

# LocalItemInfoMapに設定
    function sketch:core/common/api/register_item/set_local_map
