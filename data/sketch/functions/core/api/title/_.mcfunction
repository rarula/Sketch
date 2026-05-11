#> sketch:core/api/title/_
#
# @within function sketch:api/title

# Set defaults
    execute unless data storage sketch:data in.subtitle run data modify storage sketch:data in.subtitle set value ""
    execute unless data storage sketch:data in.fade_in run data modify storage sketch:data in.fade_in set value 10
    execute unless data storage sketch:data in.stay run data modify storage sketch:data in.stay set value 70
    execute unless data storage sketch:data in.fade_out run data modify storage sketch:data in.fade_out set value 20

# Show via macro
    data modify storage sketch:temp Title set from storage sketch:data in
    function sketch:core/api/title/show with storage sketch:temp Title

# Reset
    data remove storage sketch:temp Title
    data remove storage sketch:data in
