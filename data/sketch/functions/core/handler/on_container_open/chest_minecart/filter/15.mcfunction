#> sketch:core/handler/on_container_open/chest_minecart/filter/15
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/find

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={15-0=true}}] if entity @s[tag=Sketch.Filter.15-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/14
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={15-1=true}}] if entity @s[tag=Sketch.Filter.15-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/14
