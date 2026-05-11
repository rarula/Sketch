#> sketch:core/api/actionbar/_
#
# @within function sketch:api/actionbar

# Set defaults
    execute unless data storage sketch:data in.color run data modify storage sketch:data in.color set value "white"

# Show via macro
    data modify storage sketch:temp Actionbar set from storage sketch:data in
    function sketch:core/api/actionbar/show with storage sketch:temp Actionbar

# Reset
    data remove storage sketch:temp Actionbar
    data remove storage sketch:data in
