#> sketch:core/handler/on_interact/filter/6
# @within function sketch:core/handler/on_interact/filter/7

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={6-0=true}}] if entity @s[tag=Sketch.Filter.6-0] run function sketch:core/handler/on_interact/filter/5
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={6-1=true}}] if entity @s[tag=Sketch.Filter.6-1] run function sketch:core/handler/on_interact/filter/5
