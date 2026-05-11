#> sketch:util/map/core/set/update_map/update
# @within function sketch:util/map/core/set/update_map/_

# Update value for specified key
    data modify storage sketch:util/temp TargetElements[-1].value set from storage sketch:util in.value

# Restore deleted element
    function sketch:util/map/core/set/update_map/element/revert

# Return Map containing the updated element
    data modify storage sketch:util out.map set from storage sketch:util/temp TargetElements
