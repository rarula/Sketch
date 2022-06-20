#> sketch:core/handler/on_open/filter/9
# @within function sketch:core/handler/on_open/filter/10

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={9-0=true}}] if entity @s[tag=Sketch.Filter.9-0] run function sketch:core/handler/on_open/filter/8
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={9-1=true}}] if entity @s[tag=Sketch.Filter.9-1] run function sketch:core/handler/on_open/filter/8
