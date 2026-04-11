#> sketch:core/handler/on_container_open/chest_minecart/filter/4
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/5

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={4-0=true}}] if entity @s[tag=Sketch.Filter.4-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/3
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={4-1=true}}] if entity @s[tag=Sketch.Filter.4-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/3
