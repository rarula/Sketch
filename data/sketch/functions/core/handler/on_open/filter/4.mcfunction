#> sketch:core/handler/on_open/filter/4
# @within function sketch:core/handler/on_open/filter/5

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={4-0=true}}] if entity @s[tag=Sketch.Filter.4-0] run function sketch:core/handler/on_open/filter/3
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={4-1=true}}] if entity @s[tag=Sketch.Filter.4-1] run function sketch:core/handler/on_open/filter/3
