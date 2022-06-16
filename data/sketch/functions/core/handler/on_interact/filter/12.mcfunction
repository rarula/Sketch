#> sketch:core/handler/on_interact/filter/12
# @within function sketch:core/handler/on_interact/filter/13

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={12-0=true}}] if entity @s[tag=Sketch.Filter.12-0] run function sketch:core/handler/on_interact/filter/11
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={12-1=true}}] if entity @s[tag=Sketch.Filter.12-1] run function sketch:core/handler/on_interact/filter/11
