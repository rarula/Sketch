#> sketch:util/map/core/delete/revert
# @within function
#   sketch:util/map/core/delete/_
#   sketch:util/map/core/delete/revert

# 配列末尾の要素を末尾に追加
    data modify storage sketch:util out.map append from storage sketch:util/temp DeletedElements[-1]
    data remove storage sketch:util/temp DeletedElements[-1]

# すべての要素を戻すまで再帰
    execute if data storage sketch:util/temp DeletedElements[-1] run function sketch:util/map/core/delete/revert
