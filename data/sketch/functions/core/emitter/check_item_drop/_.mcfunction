#> sketch:core/emitter/check_item_drop/_
#
# Fire item drop as event
#
# @within function sketch:core/tick

#>
# @within function sketch:core/emitter/check_item_drop/**
    #declare tag Sketch.checkItemDrop.this

# Search for dropped item
    tag @s add Sketch.checkItemDrop.this
    execute as @e[type=minecraft:item, distance=..5.0] run function sketch:core/emitter/check_item_drop/find_dropped_item/_
    tag @s remove Sketch.checkItemDrop.this
