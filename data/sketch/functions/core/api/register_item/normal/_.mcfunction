#> sketch:core/api/register_item/normal/_
#
# @input
#   vector 10000 0 10000
#       container.0
#   storage sketch:data in
#       key: string
#       isGlobal?: boolean
#
# @within function sketch:api/register_item/normal

# Set default arguments
    execute unless data storage sketch:data in.isGlobal run data modify storage sketch:data in.isGlobal set value false


# Set item type
    data modify storage sketch:temp ItemType set value "Normal"
    item modify block 10000 0 10000 container.0 sketch:register_item/normal

# Add to each Map
    execute if data storage sketch:data in{isGlobal:0b} run function sketch:core/api/register_item/normal/register_local_item
    execute if data storage sketch:data in{isGlobal:1b} run function sketch:core/api/register_item/normal/register_global_item


# Reset
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage sketch:temp ItemType
    data remove storage sketch:data in
