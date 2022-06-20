#> sketch:core/handler/on_open/filter/14
# @within function sketch:core/handler/on_open/filter/15

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={14-0=true}}] if entity @s[tag=Sketch.Filter.14-0] run function sketch:core/handler/on_open/filter/13
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={14-1=true}}] if entity @s[tag=Sketch.Filter.14-1] run function sketch:core/handler/on_open/filter/13
