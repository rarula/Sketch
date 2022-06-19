#> example:menu/container/save_contents
#
# メニューに入れたアイテムを保存する
#
# @within function
#   example:handler/on_select
#   example:handler/on_close

function #oh_my_dat:please

execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page set value [[], [], [], []]

execute if score @s Page matches 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[0] set from storage sketch: out.items
execute if score @s Page matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[1] set from storage sketch: out.items
execute if score @s Page matches 3 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[2] set from storage sketch: out.items
execute if score @s Page matches 4 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Example.Page[3] set from storage sketch: out.items
