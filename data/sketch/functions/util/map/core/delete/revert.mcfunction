#> sketch:util/map/core/delete/revert
# @within function
#   sketch:util/map/core/delete/_
#   sketch:util/map/core/delete/revert

# Append last array element to the end
    data modify storage sketch:util out.map append from storage sketch:util/temp DeletedElements[-1]
    data remove storage sketch:util/temp DeletedElements[-1]

# Recurse until all elements are restored
    execute if data storage sketch:util/temp DeletedElements[-1] run function sketch:util/map/core/delete/revert
