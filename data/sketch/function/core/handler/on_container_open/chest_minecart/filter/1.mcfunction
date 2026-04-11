#> sketch:core/handler/on_container_open/chest_minecart/filter/1
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/2

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={1-0=true}}] if entity @s[tag=Sketch.Filter.1-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/0
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={1-1=true}}] if entity @s[tag=Sketch.Filter.1-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/0
