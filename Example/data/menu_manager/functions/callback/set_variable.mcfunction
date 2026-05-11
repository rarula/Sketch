#> menu_manager:callback/set_variable
#
# Called when placing a temporary item
#
# @within tag/function sketch:set_variable/*

execute if data storage sketch:data callback{id:"dimensions"} run function menu:dimensions/variable
