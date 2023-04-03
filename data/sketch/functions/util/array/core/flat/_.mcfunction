#> sketch:util/array/core/flat/_
#
# @input
#   storage sketch:util in
#       array: any[]
#
# @output
#   storage sketch:util out
#       array: any[]
#
# @within function sketch:util/array/flat

# 再帰的に平坦化
    data modify storage sketch:util/temp ArrayList append from storage sketch:util in.array
    function sketch:util/array/core/flat/loop

# 要素の順序を反転
    data modify storage sketch:util in.array set from storage sketch:util/temp Flattened
    function sketch:util/array/reverse

# リセット
    data remove storage sketch:util/temp ArrayList
    data remove storage sketch:util/temp Flattened
    data remove storage sketch:util/temp isListTag
    data remove storage sketch:util in
