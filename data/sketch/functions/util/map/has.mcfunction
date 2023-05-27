#> sketch:util/map/has
#
# 指定されたキーに対する要素が含まれているかどうかを返します
#
# @input
#   storage sketch:util in
#       key: any
#           テストする要素のキー
#       map: Map
#           対象のMap
#
# @output
#   storage sketch:util out
#       contains: boolean
#           指定されたキーに対する要素が含まれているかどうか
#
# @within * sketch:**

function sketch:util/map/core/has/_
