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

# Copy target Map
    data modify storage sketch:util out.map set from storage sketch:util in.map

# Move element with specified key to out.map[-1]
    function sketch:util/map/core/delete/move

# Delete element
    data remove storage sketch:util out.map[-1]

# Restore deleted element
    function sketch:util/map/core/delete/revert

# Reset
    data remove storage sketch:util/temp DeletedElements
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
    data remove storage sketch:util in
