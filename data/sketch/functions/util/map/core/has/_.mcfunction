#> sketch:util/map/core/has/_
#
# @input
#   storage sketch:util in
#       key: any
#       map: Map
#
# @output
#   storage sketch:util out
#       contains: boolean
#
# @within function sketch:util/map/has

# Initialize return value
    data modify storage sketch:util out.contains set value false

# Search whether element for specified key is contained
    function sketch:util/map/core/has/search

# Reset
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
