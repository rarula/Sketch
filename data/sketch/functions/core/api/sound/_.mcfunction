#> sketch:core/api/sound/_
#
# @within function sketch:api/sound

# Build sound params: defaults first, then merge user input (overrides defaults)
    data modify storage sketch:temp Sound set value {source:"master",volume:1.0,pitch:1.0}
    data modify storage sketch:temp Sound merge from storage sketch:data in

# Play via macro
    function sketch:core/api/sound/play with storage sketch:temp Sound

# Reset
    data remove storage sketch:temp Sound
    data remove storage sketch:data in
