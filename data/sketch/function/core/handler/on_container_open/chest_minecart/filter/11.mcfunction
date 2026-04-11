#> sketch:core/handler/on_container_open/chest_minecart/filter/11
# @within function sketch:core/handler/on_container_open/chest_minecart/filter/12

execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={11-0=true}}] if entity @s[tag=Sketch.Filter.11-0] run function sketch:core/handler/on_container_open/chest_minecart/filter/10
execute if entity @a[tag=Sketch.this, advancements={sketch:on_container_open={11-1=true}}] if entity @s[tag=Sketch.Filter.11-1] run function sketch:core/handler/on_container_open/chest_minecart/filter/10
