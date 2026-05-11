#> sketch:util/map/set
#
# Adds, updates, or creates an element with the specified key and value
#
# @input
#   storage sketch:util in
#       key: any
#           Key of the element to set
#       value: any
#           Value of the element to set
#       map?: Map
#           Target Map to add/update (optional)
#
# @output
#   storage sketch:util out
#       map: Map
#           Map containing the set element
#
# @within * sketch:**

function sketch:util/map/core/set/_
