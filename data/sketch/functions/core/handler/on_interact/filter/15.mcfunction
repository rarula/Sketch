#> sketch:core/handler/on_interact/filter/15
# @within function sketch:core/handler/on_interact/filter/search

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={15-0=true}}] if entity @s[tag=Sketch.Filter.15-0] run function sketch:core/handler/on_interact/filter/14
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={15-1=true}}] if entity @s[tag=Sketch.Filter.15-1] run function sketch:core/handler/on_interact/filter/14
