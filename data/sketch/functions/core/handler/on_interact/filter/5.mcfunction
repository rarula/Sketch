#> sketch:core/handler/on_interact/filter/5
# @within function sketch:core/handler/on_interact/filter/6

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={5-0=true}}] if entity @s[tag=Sketch.Filter.5-0] run function sketch:core/handler/on_interact/filter/4
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={5-1=true}}] if entity @s[tag=Sketch.Filter.5-1] run function sketch:core/handler/on_interact/filter/4
