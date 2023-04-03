#> sketch:core/handler/on_container_open/chest_minecart/filter/2
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/3

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={2-0=true}}] if entity @s[tag=Sketch.Filter.2-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/1
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={2-1=true}}] if entity @s[tag=Sketch.Filter.2-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/1
