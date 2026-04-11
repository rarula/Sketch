#> sketch:core/common/api/build/create_menu/set_item/item_type/normal/_
# @within function sketch:core/common/api/build/create_menu/set_item/_

# 対応するアイテムを取得
    execute if data storage sketch:temp {isGlobalItemInfo:0b} run data modify storage sketch:temp TargetSlot set from storage sketch:temp ItemInfo.Slot
    execute if data storage sketch:temp {isGlobalItemInfo:0b} run function sketch:core/common/api/build/get_item/_
    execute if data storage sketch:temp {isGlobalItemInfo:1b} run data modify block 10000 0 10000 Items append from storage sketch:temp ItemInfo.Item

# 取得したアイテムを配置
    data modify storage sketch:temp TargetSlot set from storage sketch:temp Slot
    function sketch:core/common/api/build/place_item/_
