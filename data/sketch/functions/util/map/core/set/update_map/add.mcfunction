#> sketch:util/map/core/set/update_map/add
# @within function sketch:util/map/core/set/update_map/_

# Create element with key and value
    data modify storage sketch:util/temp Element.key set from storage sketch:util in.key
    data modify storage sketch:util/temp Element.value set from storage sketch:util in.value

# Return Map containing the added element
    data modify storage sketch:util out.map set from storage sketch:util in.map
    data modify storage sketch:util out.map append from storage sketch:util/temp Element

# Reset
    data remove storage sketch:util/temp Element
