#> sketch:util/map/core/delete/_
#
# @input
#   storage sketch:util in
#       key: any
#       map: Map
#
# @output
#   storage sketch:util out
#       map: Map
#
# @within function sketch:util/map/delete

# 対象のMapをコピー
    data modify storage sketch:util out.map set from storage sketch:util in.map

# 指定されたキーを持つ要素をout.map[-1]に移動
    function sketch:util/map/core/delete/move

# 要素を削除
    data remove storage sketch:util out.map[-1]

# 削除した要素を戻す
    function sketch:util/map/core/delete/revert

# リセット
    data remove storage sketch:util/temp DeletedElements
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
