#> sketch:util/map/core/set/create_map/_
# @within function sketch:util/map/core/set/_

# Create element with key and value
    data modify storage sketch:util/temp Element.key set from storage sketch:util in.key
    data modify storage sketch:util/temp Element.value set from storage sketch:util in.value

# Return Map containing the created element
    data modify storage sketch:util out.map append from storage sketch:util/temp Element

# Reset
    data remove storage sketch:util/temp Element
