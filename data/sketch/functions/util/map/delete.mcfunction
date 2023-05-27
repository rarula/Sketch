#> sketch:util/map/delete
#
# 指定されたキーに対する要素を削除します
#
# @input
#   storage sketch:util in
#       key: any
#           削除する要素のキー
#       map: Map
#           対象のMap
#
# @output
#   storage sketch:util out
#       map: Map
#           要素が削除されたMap
#
# @within * sketch:**

function sketch:util/map/core/delete/_
