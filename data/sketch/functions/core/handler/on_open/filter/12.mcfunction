#> sketch:core/handler/on_open/filter/12
# @within function sketch:core/handler/on_open/filter/13

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={12-0=true}}] if entity @s[tag=Sketch.Filter.12-0] run function sketch:core/handler/on_open/filter/11
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={12-1=true}}] if entity @s[tag=Sketch.Filter.12-1] run function sketch:core/handler/on_open/filter/11
