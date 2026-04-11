#> sketch:core/handler/on_container_open/chest_minecart/filter/5
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/6

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={5-0=true}}] if entity @s[tag=Sketch.Filter.5-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/4
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={5-1=true}}] if entity @s[tag=Sketch.Filter.5-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/4
