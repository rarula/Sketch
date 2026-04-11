#> sketch:util/map/core/set/_
#
# @input
#   storage sketch:util in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage sketch:util out
#       map: Map
#
# @within function sketch:util/map/set

# 対象のMapが指定されている -> Mapを追加・更新
    execute if data storage sketch:util in.map run function sketch:util/map/core/set/update_map/_

# 対象のMapが指定されていない -> Mapを作成
    execute unless data storage sketch:util in.map run function sketch:util/map/core/set/create_map/_

# リセット
    data remove storage sketch:util in
