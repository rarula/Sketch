#> sketch:core/api/register_item/button/register_local_item
# @within function sketch:core/api/register_item/button/_

# アイテムを保存するスロットを取得
    function sketch:core/common/api/register_item/get_slot_index

# アイテムを保存
    data modify storage sketch:temp TargetSlot set from storage sketch:temp Slot
    function sketch:core/common/api/register_item/save_item/_


# LocalItemInfoを構成
    data modify storage sketch:temp ItemInfo.ItemType set from storage sketch:temp ItemType
    data modify storage sketch:temp ItemInfo.Slot set from storage sketch:temp Slot

# LocalItemInfoMapに設定
    function sketch:core/common/api/register_item/set_local_map


# リセット
    data remove storage sketch:temp Slot
