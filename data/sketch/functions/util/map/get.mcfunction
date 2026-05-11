#> sketch:util/map/get
#
# Returns the value for the specified key
#
# @input
#   storage sketch:util in
#       key: any
#           Key of the element to get
#       map: Map
#           Target Map
#
# @output
#   storage sketch:util out
#       value: any
#           Retrieved value
#       contains: boolean
#           Whether an element for the specified key is contained
#
# @within * sketch:**

function sketch:util/map/core/get/_
