#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/_
#
# @callbackInput
#   storage sketch:data in
#       listener?: any
#
# @within function sketch:core/common/api/build/create_menu/set_item/_

## Backup in
    data modify storage sketch:temp/build in set from storage sketch:data in
    data remove storage sketch:data in


# Set callback return value
    data modify storage sketch:data callback.id set from storage sketch:temp/build in.id
    data modify storage sketch:data callback.key set from storage sketch:temp Content
    data modify storage sketch:data callback.slot set from storage sketch:temp Slot

# Callback
    execute if entity @s[type=minecraft:chest_minecart] run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
    execute if entity @s[type=minecraft:player] run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest

# Reset
    data remove storage sketch:data callback


# Set listener on retrieved item
    item modify block 10000 0 10000 container.0 sketch:set_listener

# Reset
    data remove storage sketch:data in


# Place retrieved item
    data modify storage sketch:temp TargetSlot set from storage sketch:temp Slot
    function sketch:core/common/api/build/place_item/_


## Set in
    data modify storage sketch:data in set from storage sketch:temp/build in
    data remove storage sketch:temp/build in
