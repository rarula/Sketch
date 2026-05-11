#> sketch:util/map/core/get/_
#
# @input
#   storage sketch:util in
#       map: Map
#       key: any
#
# @output
#   storage sketch:util out
#       value: any
#       contains: boolean
#
# @within function sketch:util/map/get

# Initialize return value
    data modify storage sketch:util out.contains set value false

# Search for element with specified key
    function sketch:util/map/core/get/search

# If elements remain in the array, the element for the specified key is contained
    execute if data storage sketch:util in.map[-1] run data modify storage sketch:util out.contains set value true

# Reset
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
