#> sketch:core/handler/on_interact/filter/3
# @within function sketch:core/handler/on_interact/filter/4

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={3-0=true}}] if entity @s[tag=Sketch.Filter.3-0] run function sketch:core/handler/on_interact/filter/2
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={3-1=true}}] if entity @s[tag=Sketch.Filter.3-1] run function sketch:core/handler/on_interact/filter/2
