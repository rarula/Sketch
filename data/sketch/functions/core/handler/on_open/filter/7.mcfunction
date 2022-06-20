#> sketch:core/handler/on_open/filter/7
# @within function sketch:core/handler/on_open/filter/8

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={7-0=true}}] if entity @s[tag=Sketch.Filter.7-0] run function sketch:core/handler/on_open/filter/6
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={7-1=true}}] if entity @s[tag=Sketch.Filter.7-1] run function sketch:core/handler/on_open/filter/6
