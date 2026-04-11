#> menu_manager:handler/on_select
#
# Called when a player selects a button
#
# @within tag/function sketch:handler/on_select/*

execute if data storage sketch: callback{id:"main"} run function menu:main/listener
execute if data storage sketch: callback{id:"dimensions"} run function menu:dimensions/listener
