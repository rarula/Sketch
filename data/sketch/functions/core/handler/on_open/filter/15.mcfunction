#> sketch:core/handler/on_open/filter/15
# @within function sketch:core/handler/on_open/filter/search

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={15-0=true}}] if entity @s[tag=Sketch.Filter.15-0] run function sketch:core/handler/on_open/filter/14
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={15-1=true}}] if entity @s[tag=Sketch.Filter.15-1] run function sketch:core/handler/on_open/filter/14
