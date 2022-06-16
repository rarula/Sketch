#> sketch:core/handler/on_interact/filter/8
# @within function sketch:core/handler/on_interact/filter/9

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={8-0=true}}] if entity @s[tag=Sketch.Filter.8-0] run function sketch:core/handler/on_interact/filter/7
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={8-1=true}}] if entity @s[tag=Sketch.Filter.8-1] run function sketch:core/handler/on_interact/filter/7
