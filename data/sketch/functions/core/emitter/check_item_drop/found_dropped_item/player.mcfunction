#> sketch:core/emitter/check_item_drop/found_dropped_item/player
# @within function sketch:core/emitter/check_item_drop/find_dropped_item/_

# Fire event
    function sketch:core/handler/on_item_drop/_

# Reset
    scoreboard players remove @s Sketch.Drop 1
