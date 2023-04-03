#> sketch:core/handler/on_container_open/chest_minecart/filter/9
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/10

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={9-0=true}}] if entity @s[tag=Sketch.Filter.9-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/8
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={9-1=true}}] if entity @s[tag=Sketch.Filter.9-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/8
