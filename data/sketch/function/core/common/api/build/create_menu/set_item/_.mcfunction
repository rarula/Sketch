#> sketch:core/common/api/build/create_menu/set_item/_
#
# アイテムを配置する
#
# @input
#   storage sketch:temp/build
#       Slot: byte
#           配置するアイテムのスロット
#       Content: string
#           配置するアイテムのキー
#
# @within function sketch:core/common/api/build/create_menu/loop

# ItemInfoを取得
    data modify storage sketch:temp Key set from storage sketch:temp Content
    function sketch:core/common/api/build/create_menu/get_item_info/_

# ItemTypeごとの処理
    execute if data storage sketch:temp ItemInfo{ItemType:"Normal"} run function sketch:core/common/api/build/create_menu/set_item/item_type/normal/_
    execute if data storage sketch:temp ItemInfo{ItemType:"Button"} run function sketch:core/common/api/build/create_menu/set_item/item_type/button/_
    execute if data storage sketch:temp ItemInfo{ItemType:"Variable"} run function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_
