#> sketch:core/common/api/build/create_menu/get_item_info/from_local_map
# @within function sketch:core/common/api/build/create_menu/get_item_info/_

# 登録済みの要素を取得 (LocalItemInfoMap)
    data modify storage sketch:util in.map set from storage sketch:core LocalItemInfoMap
    data modify storage sketch:util in.key set from storage sketch:temp Key
    function sketch:util/map/get


# 取得したItemInfoを返す
    execute if data storage sketch:util out{contains:true} run data modify storage sketch:temp ItemInfo set from storage sketch:util out.value

# GlobalItemInfoかどうかを返す
    execute if data storage sketch:util out{contains:true} run data modify storage sketch:temp isGlobalItemInfo set value false
