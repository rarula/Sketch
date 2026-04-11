#> sketch:core/handler/on_container_open/chest_minecart/filter/12
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/13

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={12-0=true}}] if entity @s[tag=Sketch.Filter.12-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/11
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={12-1=true}}] if entity @s[tag=Sketch.Filter.12-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/11
