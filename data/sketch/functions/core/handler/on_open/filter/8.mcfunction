#> sketch:core/handler/on_open/filter/8
# @within function sketch:core/handler/on_open/filter/9

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={8-0=true}}] if entity @s[tag=Sketch.Filter.8-0] run function sketch:core/handler/on_open/filter/7
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={8-1=true}}] if entity @s[tag=Sketch.Filter.8-1] run function sketch:core/handler/on_open/filter/7
