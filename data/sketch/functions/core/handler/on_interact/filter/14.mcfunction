#> sketch:core/handler/on_interact/filter/14
# @within function sketch:core/handler/on_interact/filter/15

execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={14-0=true}}] if entity @s[tag=Sketch.Filter.14-0] run function sketch:core/handler/on_interact/filter/13
execute if entity @a[tag=Sketch.Filter.this, advancements={sketch:interact={14-1=true}}] if entity @s[tag=Sketch.Filter.14-1] run function sketch:core/handler/on_interact/filter/13
