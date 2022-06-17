#> sketch:core/handler/on_interact/filter/9
# @within function sketch:core/handler/on_interact/filter/10

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={9-0=true}}] if entity @s[tag=Sketch.Filter.9-0] run function sketch:core/handler/on_interact/filter/8
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={9-1=true}}] if entity @s[tag=Sketch.Filter.9-1] run function sketch:core/handler/on_interact/filter/8
