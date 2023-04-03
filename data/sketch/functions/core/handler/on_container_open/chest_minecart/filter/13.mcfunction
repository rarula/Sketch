#> sketch:core/handler/on_container_open/chest_minecart/filter/13
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/14

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={13-0=true}}] if entity @s[tag=Sketch.Filter.13-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/12
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={13-1=true}}] if entity @s[tag=Sketch.Filter.13-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/12
