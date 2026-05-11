#> sketch:core/api/set_menu/ender_chest
# @within function sketch:core/api/set_menu/_

## Set isInCallback
    function sketch:core/common/is_in_callback/set


# Callback
    data modify storage sketch:data callback.id set from storage sketch:data in.id
    data remove storage sketch:data in
    execute at @s run function #sketch:set_menu/ender_chest

# Reset
    data remove storage sketch:data callback


## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
