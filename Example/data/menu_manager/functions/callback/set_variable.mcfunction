#> menu_manager:callback/set_variable
#
# 仮のアイテムを配置する時に呼び出される
#
# @within tag/function sketch:set_variable/*

execute if data storage sketch: callback{id:"dimensions"} run function menu:dimensions/variable
