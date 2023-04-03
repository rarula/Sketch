#> sketch:core/api/set_menu/ender_chest
# @within function sketch:core/api/set_menu/_

# コールバック
    data modify storage sketch: callback.id set from storage sketch: in.id
    data remove storage sketch: in
    execute at @s run function #sketch:set_menu/ender_chest
