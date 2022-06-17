#> sketch:core/handler/on_interact/filter/search
# @within function sketch:core/handler/on_interact/_

#>
# @within sketch:core/handler/on_interact/filter/**
#declare tag Sketch.Filter.this

tag @s add Sketch.Filter.this
execute as @e[type=minecraft:chest_minecart, tag=SketchEntity, distance=..9.0] run function sketch:core/handler/on_interact/filter/15
tag @s remove Sketch.Filter.this
