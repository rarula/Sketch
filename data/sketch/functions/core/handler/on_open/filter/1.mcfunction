#> sketch:core/handler/on_open/filter/1
# @within function sketch:core/handler/on_open/filter/2

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={1-0=true}}] if entity @s[tag=Sketch.Filter.1-0] run function sketch:core/handler/on_open/filter/0
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={1-1=true}}] if entity @s[tag=Sketch.Filter.1-1] run function sketch:core/handler/on_open/filter/0
