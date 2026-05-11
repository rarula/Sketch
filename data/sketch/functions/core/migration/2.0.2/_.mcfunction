#> sketch:core/migration/2.0.2/_
# @within function sketch:core/load

# Version setup
    data modify storage sketch:data Version set value "2.0.2"

# Fix issue where arguments of sketch:util/map/delete are not cleared (#8)
    data remove storage sketch:util in
