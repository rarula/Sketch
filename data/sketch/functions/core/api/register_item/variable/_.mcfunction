#> sketch:core/api/register_item/variable/_
#
# @input
#   storage sketch:data in
#       key: string
#       isGlobal?: boolean
#
# @within function sketch:api/register_item/variable

# Specify default arguments
    execute unless data storage sketch:data in.isGlobal run data modify storage sketch:data in.isGlobal set value false


# Set item type
    data modify storage sketch:temp ItemType set value "Variable"

# Add to each Map
    execute if data storage sketch:data in{isGlobal:0b} run function sketch:core/api/register_item/variable/register_local_item
    execute if data storage sketch:data in{isGlobal:1b} run function sketch:core/api/register_item/variable/register_global_item


# Reset
    data remove storage sketch:temp ItemType
    data remove storage sketch:data in
