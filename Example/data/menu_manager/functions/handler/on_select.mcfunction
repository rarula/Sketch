#> menu_manager:handler/on_select
#
# ボタンを選択した時に呼び出される
#
# @within tag/function sketch:handler/on_select/*

execute if data storage sketch: callback{id:"main"} run function menu:main/listener
execute if data storage sketch: callback{id:"dimensions"} run function menu:dimensions/listener
