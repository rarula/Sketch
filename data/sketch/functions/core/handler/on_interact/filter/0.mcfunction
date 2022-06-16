#> sketch:core/handler/on_interact/filter/0
# @within function sketch:core/handler/on_interact/filter/1

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={0-0=true}}] if entity @s[tag=Sketch.Filter.0-0] run function sketch:core/handler/on_interact/filter/found
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={0-1=true}}] if entity @s[tag=Sketch.Filter.0-1] run function sketch:core/handler/on_interact/filter/found
