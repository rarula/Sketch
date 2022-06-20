#> sketch:core/handler/on_open/filter/5
# @within function sketch:core/handler/on_open/filter/6

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={5-0=true}}] if entity @s[tag=Sketch.Filter.5-0] run function sketch:core/handler/on_open/filter/4
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={5-1=true}}] if entity @s[tag=Sketch.Filter.5-1] run function sketch:core/handler/on_open/filter/4
