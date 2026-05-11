#> sketch:core/emitter/check_item_click/_
#
# Fire item click as event
#
# @within function sketch:core/tick
#
# Note: Using @s Sketch score instead of storage (per-tick, per-player speedup)

# Check item click (save result to score)
    execute store success score @s Sketch run clear @s #sketch:all{Sketch:{isButton:true}}

# Item is being clicked -> Fire event
    execute if score @s Sketch matches 1 run function sketch:core/handler/on_item_click/_

# Reset
    scoreboard players reset @s Sketch
