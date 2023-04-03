#> sketch:util/map/get
#
# 指定されたキーから値を返します
#
# @input
#   storage sketch:util in
#       key: any
#           取得する要素のキー
#       map: compound[]
#           対象のMap
#
# @output
#   storage sketch:util out
#       value: any
#           取得した値
#       contains: boolean
#           指定されたキーに対する要素が含まれているかどうか
#
# @within * sketch:**

function sketch:util/map/core/get/_
