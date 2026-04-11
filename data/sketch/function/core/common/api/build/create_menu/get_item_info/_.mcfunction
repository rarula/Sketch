#> sketch:core/common/api/build/create_menu/get_item_info/_
#
# 指定されたキーからItemInfoを返す
#
# @input
#   storage sketch:temp
#       Key: string
#           取得する要素のキー
#
# @output
#   storage sketch:temp
#       ItemInfo: ItemInfo
#           取得したItemInfo
#       isGlobalItemInfo: boolean
#           GlobalItemInfoかどうか
#
# @within function sketch:core/common/api/build/create_menu/set_item/_

# LocalItemInfoMapから取得
    function sketch:core/common/api/build/create_menu/get_item_info/from_local_map

# GlobalItemInfoMapから取得
    execute if data storage sketch:util out{contains:false} run function sketch:core/common/api/build/create_menu/get_item_info/from_global_map


# utilを初期化
    function sketch:util/cleanup

# リセット
    data remove storage sketch:temp Key
