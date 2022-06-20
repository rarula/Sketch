#> sketch:core/handler/on_open/filter/search
# @within function sketch:core/handler/on_open/_

#>
# @within sketch:core/handler/on_open/filter/**
#declare tag Sketch.onInteract.this

tag @s add Sketch.onInteract.this
execute as @e[type=minecraft:chest_minecart, tag=SketchEntity, distance=..9.0] run function sketch:core/handler/on_open/filter/15
tag @s remove Sketch.onInteract.this
