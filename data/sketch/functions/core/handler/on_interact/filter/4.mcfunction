#> sketch:core/handler/on_interact/filter/4
# @within function sketch:core/handler/on_interact/filter/5

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={4-0=true}}] if entity @s[tag=Sketch.Filter.4-0] run function sketch:core/handler/on_interact/filter/3
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={4-1=true}}] if entity @s[tag=Sketch.Filter.4-1] run function sketch:core/handler/on_interact/filter/3
