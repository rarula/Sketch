#> sketch:util/map/core/set/_
#
# @input
#   storage sketch:util in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage sketch:util out
#       map: Map
#
# @within function sketch:util/map/set

# Target Map is specified -> Add/update Map
    execute if data storage sketch:util in.map run function sketch:util/map/core/set/update_map/_

# Target Map not specified -> Create Map
    execute unless data storage sketch:util in.map run function sketch:util/map/core/set/create_map/_

# Reset
    data remove storage sketch:util in
