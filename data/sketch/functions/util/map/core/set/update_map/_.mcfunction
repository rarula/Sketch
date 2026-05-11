#> sketch:util/map/core/set/update_map/_
# @within function sketch:util/map/core/set/_

# Copy target Map
    data modify storage sketch:util/temp TargetElements set from storage sketch:util in.map

# Move element with specified key to TargetElements[-1]
    function sketch:util/map/core/set/update_map/element/move


# Specified key found -> Update Map
    execute if data storage sketch:util/temp {Result:false} run function sketch:util/map/core/set/update_map/update

# Specified key not found -> Add element to Map
    execute if data storage sketch:util/temp {Result:true} run function sketch:util/map/core/set/update_map/add


# Reset
    data remove storage sketch:util/temp TargetElements
    data remove storage sketch:util/temp DeletedElements
    data remove storage sketch:util/temp Key
    data remove storage sketch:util/temp Result
