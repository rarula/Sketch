#> sketch:core/api/set_menu/chest_minecart
# @within function sketch:core/api/set_menu/_

## Set isInCallback
    function sketch:core/common/is_in_callback/set

## Set Sketch.Target
    function sketch:core/common/sketch_target/set


# Callback
    data modify storage sketch:data callback.id set from storage sketch:data in.id
    data remove storage sketch:data in
    execute at @s run function #sketch:set_menu/chest_minecart

# Reset
    data remove storage sketch:data callback


## Remove Sketch.Target
    function sketch:core/common/sketch_target/reset

## Remove isInCallback
    function sketch:core/common/is_in_callback/reset
