#> sketch:core/handler/on_container_open/chest_minecart/filter/10
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/11

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={10-0=true}}] if entity @s[tag=Sketch.Filter.10-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/9
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={10-1=true}}] if entity @s[tag=Sketch.Filter.10-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/9
