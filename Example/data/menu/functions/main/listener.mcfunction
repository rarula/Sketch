#> menu:main/listener
#
# ボタンを選択した時に呼び出される
#
# @within function menu_manager:handler/on_select

execute if data storage sketch: callback{listener:"DimensionsMenu"} run function menu:dimensions/
