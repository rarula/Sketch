#> sketch:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function sketch:core/common/api/build/create_menu/set_item/item_type/variable/_

## Set Sketch.Player
    tag @s add Sketch.Player


# Callback
    execute at @s run function #sketch:set_variable/ender_chest


## Remove Sketch.Player
    function sketch:core/common/sketch_player/reset
