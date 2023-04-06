#> menu:dimensions/listener
#
# ボタンを選択した時に呼び出される
#
# @within function menu_manager:handler/on_select

execute if data storage sketch: callback{listener:{id:"Overworld", canTeleport:true}} in minecraft:overworld run tp @s 10 -60 -3 180 0
execute if data storage sketch: callback{listener:{id:"TheNether", canTeleport:true}} in minecraft:the_nether run tp @s -18 57 -26 90 0
execute if data storage sketch: callback{listener:{id:"TheEnd",    canTeleport:true}} in minecraft:the_end run tp @s 4 61 -7 0 0

execute if data storage sketch: callback{listener:"Back"} run function menu:main/
