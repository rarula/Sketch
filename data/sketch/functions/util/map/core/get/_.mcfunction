#> sketch:util/map/core/get/_
#
# @input
#   storage sketch:util in
#       map: compound[]
#       key: any
#
# @output
#   storage sketch:util out
#       value: any
#       contains: boolean
#
# @within function sketch:util/map/get

# 戻り値を初期化
    data modify storage sketch:util out.contains set value false

# 指定したキーの要素を探索
    function sketch:util/map/core/get/search

# 配列に要素が残っているなら、指定したキーに対する要素が含まれている
    execute if data storage sketch:util in.map[-1] run data modify storage sketch:util out.contains set value true

# リセット
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
