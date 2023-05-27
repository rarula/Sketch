#> sketch:util/map/core/has/_
#
# @input
#   storage sketch:util in
#       key: any
#       map: Map
#
# @output
#   storage sketch:util out
#       contains: boolean
#
# @within function sketch:util/map/has

# 戻り値を初期化
    data modify storage sketch:util out.contains set value false

# 指定したキーに対する要素が含まれているか探索
    function sketch:util/map/core/has/search

# リセット
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
