#> sketch:core/common/api/build/create_menu/set_item/_
#
# Place item
#
# @input
#   storage sketch:temp/build
#       Slot: byte
#           Slot of the item to place
#       Content: string
#           Key of the item to place
#
# @within function sketch:core/common/api/build/create_menu/loop

# Get ItemInfo
    data modify storage sketch:temp Key set from storage sketch:temp Content
    function sketch:core/common/api/build/create_menu/get_item_info/_

# Processing per ItemType
    execute if data storage sketch:temp ItemInfo{ItemType:"Normal"} run function sketch:core/common/api/build/create_menu/set_item/item_type/normal/_
    execute if data storage sketch:temp ItemInfo{ItemType:"Button"} run function sketch:core/common/api/build/create_menu/set_item/item_type/button/_
    execute if data storage sketch:temp ItemInfo{ItemType:"Variable"} run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_
