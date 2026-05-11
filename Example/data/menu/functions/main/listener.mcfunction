#> menu:main/listener
#
# Called when a player selects a button
#
# @within function menu_manager:handler/on_select

execute if data storage sketch:data callback{listener:"DimensionsMenu"} run function menu:dimensions/
execute if data storage sketch:data callback{listener:"DimensionsMenu"} run data modify storage sketch:data in.sound set value "minecraft:block.chest.open"
execute if data storage sketch:data callback{listener:"DimensionsMenu"} run function sketch:api/sound