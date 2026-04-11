#> sketch:core/handler/on_container_open/chest_minecart/filter/14
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/15

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={14-0=true}}] if entity @s[tag=Sketch.Filter.14-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/13
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={14-1=true}}] if entity @s[tag=Sketch.Filter.14-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/13
