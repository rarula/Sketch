#> sketch:core/handler/on_open/filter/10
# @within function sketch:core/handler/on_open/filter/11

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={10-0=true}}] if entity @s[tag=Sketch.Filter.10-0] run function sketch:core/handler/on_open/filter/9
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={10-1=true}}] if entity @s[tag=Sketch.Filter.10-1] run function sketch:core/handler/on_open/filter/9
