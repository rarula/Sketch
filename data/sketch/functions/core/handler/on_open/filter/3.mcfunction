#> sketch:core/handler/on_open/filter/3
# @within function sketch:core/handler/on_open/filter/4

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={3-0=true}}] if entity @s[tag=Sketch.Filter.3-0] run function sketch:core/handler/on_open/filter/2
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={3-1=true}}] if entity @s[tag=Sketch.Filter.3-1] run function sketch:core/handler/on_open/filter/2
