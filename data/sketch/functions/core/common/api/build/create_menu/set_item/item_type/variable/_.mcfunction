#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/_
#
# @callbackInput
#   storage sketch: in
#       listener?: any
#
# @within function sketch:core/common/api/build/create_menu/set_item/_

## inを退避
    data modify storage sketch:temp/build in set from storage sketch: in
    data remove storage sketch: in


# コールバックの戻り値を設定
    data modify storage sketch: callback.id set from storage sketch:temp/build in.id
    data modify storage sketch: callback.key set from storage sketch:temp Content
    data modify storage sketch: callback.slot set from storage sketch:temp Slot

# コールバック
    execute if entity @s[type=minecraft:chest_minecart] run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
    execute if entity @s[type=minecraft:player] run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest


# 取得したアイテムにlistenerを設定
    item modify block 10000 0 10000 container.0 sketch:set_listener

# 取得したアイテムを配置
    data modify storage sketch:temp TargetSlot set from storage sketch:temp Slot
    function sketch:core/common/api/build/place_item/_

# リセット
    data remove storage sketch: callback
    data remove storage sketch: in


## inを設定
    data modify storage sketch: in set from storage sketch:temp/build in
    data remove storage sketch:temp/build in
