#> sketch:core/handler/on_container_open/chest_minecart/filter/8
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/9

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={8-0=true}}] if entity @s[tag=Sketch.Filter.8-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/7
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={8-1=true}}] if entity @s[tag=Sketch.Filter.8-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/7
