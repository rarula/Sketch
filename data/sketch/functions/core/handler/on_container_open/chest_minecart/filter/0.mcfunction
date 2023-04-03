#> sketch:core/handler/on_container_open/chest_minecart/filter/0
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/1

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={0-0=true}}] if entity @s[tag=Sketch.Filter.0-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/found
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={0-1=true}}] if entity @s[tag=Sketch.Filter.0-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/found
