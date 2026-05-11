#> sketch:util/map/core/set/update_map/element/revert
# @within function
#   sketch:util/map/core/set/update_map/update
#   sketch:util/map/core/set/update_map/element/revert

# Append last array element to the end
    data modify storage sketch:util/temp TargetElements append from storage sketch:util/temp DeletedElements[-1]
    data remove storage sketch:util/temp DeletedElements[-1]

# Recurse until all elements are restored
    execute if data storage sketch:util/temp DeletedElements[-1] run function sketch:util/map/core/set/update_map/element/revert
