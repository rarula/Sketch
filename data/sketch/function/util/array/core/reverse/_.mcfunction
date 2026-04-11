#> sketch:util/array/core/reverse/_
#
# @input
#   storage sketch:util in
#       array: any[]
#
# @output
#   storage sketch:util out
#       array: any[]
#
# @within function sketch:util/array/reverse

# 要素の順序を反転
    function sketch:util/array/core/reverse/loop

# リセット
    data remove storage sketch:util in
