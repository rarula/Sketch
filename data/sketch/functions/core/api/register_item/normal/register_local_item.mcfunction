#> sketch:core/api/register_item/normal/register_local_item
# @within function sketch:core/api/register_item/normal/_

# Get slot to save item
    function sketch:core/common/api/register_item/get_slot_index

# Save item
    data modify storage sketch:temp TargetSlot set from storage sketch:temp Slot
    function sketch:core/common/api/register_item/save_item/_


# Compose LocalItemInfo
    data modify storage sketch:temp ItemInfo.ItemType set from storage sketch:temp ItemType
    data modify storage sketch:temp ItemInfo.Slot set from storage sketch:temp Slot

# Set in LocalItemInfoMap
    function sketch:core/common/api/register_item/set_local_map


# Reset
    data remove storage sketch:temp Slot
