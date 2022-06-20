#> sketch:core/handler/on_open/filter/6
# @within function sketch:core/handler/on_open/filter/7

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={6-0=true}}] if entity @s[tag=Sketch.Filter.6-0] run function sketch:core/handler/on_open/filter/5
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={6-1=true}}] if entity @s[tag=Sketch.Filter.6-1] run function sketch:core/handler/on_open/filter/5
