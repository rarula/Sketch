#> sketch:core/handler/on_container_open/chest_minecart/filter/3
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/4

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={3-0=true}}] if entity @s[tag=Sketch.Filter.3-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/2
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={3-1=true}}] if entity @s[tag=Sketch.Filter.3-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/2
