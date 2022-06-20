#> sketch:core/handler/on_open/filter/11
# @within function sketch:core/handler/on_open/filter/12

execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={11-0=true}}] if entity @s[tag=Sketch.Filter.11-0] run function sketch:core/handler/on_open/filter/10
execute if entity @a[tag=Sketch.onInteract.this, advancements={sketch:open={11-1=true}}] if entity @s[tag=Sketch.Filter.11-1] run function sketch:core/handler/on_open/filter/10
