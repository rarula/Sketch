#> menu_manager:callback/set_menu
#
# Called when the menu is reconfigured
#
# @within tag/function sketch:set_menu/*

execute if data storage sketch: callback{id:"main"} run function menu:main/
execute if data storage sketch: callback{id:"dimensions"} run function menu:dimensions/
