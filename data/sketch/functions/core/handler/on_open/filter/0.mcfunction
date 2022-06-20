#> sketch:core/handler/on_open/filter/0
# @within function sketch:core/handler/on_open/filter/1

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={0-0=true}}] if entity @s[tag=Sketch.Filter.0-0] run function sketch:core/handler/on_open/filter/found
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={0-1=true}}] if entity @s[tag=Sketch.Filter.0-1] run function sketch:core/handler/on_open/filter/found
