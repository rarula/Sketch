#> sketch:core/handler/on_container_open/chest_minecart/filter/6
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/7

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={6-0=true}}] if entity @s[tag=Sketch.Filter.6-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/5
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={6-1=true}}] if entity @s[tag=Sketch.Filter.6-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/5
