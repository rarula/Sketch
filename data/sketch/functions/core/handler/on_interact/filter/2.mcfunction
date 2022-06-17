#> sketch:core/handler/on_interact/filter/2
# @within function sketch:core/handler/on_interact/filter/3

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={2-0=true}}] if entity @s[tag=Sketch.Filter.2-0] run function sketch:core/handler/on_interact/filter/1
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={2-1=true}}] if entity @s[tag=Sketch.Filter.2-1] run function sketch:core/handler/on_interact/filter/1
