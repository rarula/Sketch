#> sketch:core/handler/on_interact/filter/11
# @within function sketch:core/handler/on_interact/filter/12

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={11-0=true}}] if entity @s[tag=Sketch.Filter.11-0] run function sketch:core/handler/on_interact/filter/10
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:interact={11-1=true}}] if entity @s[tag=Sketch.Filter.11-1] run function sketch:core/handler/on_interact/filter/10
