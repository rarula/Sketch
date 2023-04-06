#> menu:dimensions/variable
#
# 仮のアイテムを配置する時に呼び出される
#
# @within function menu_manager:callback/set_variable

# overworld
    execute if data storage sketch: callback{slot:10b} if dimension minecraft:overworld run item replace block 10000 0 10000 container.0 with minecraft:red_stained_glass{display:{Name:'"overworld"'}}
    execute if data storage sketch: callback{slot:10b} if dimension minecraft:overworld run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:10b} if dimension minecraft:overworld run data modify storage sketch: in.listener set value {id:"Overworld", canTeleport:false}

    execute if data storage sketch: callback{slot:10b} unless dimension minecraft:overworld run item replace block 10000 0 10000 container.0 with minecraft:lime_stained_glass{display:{Name:'"overworld"'}}
    execute if data storage sketch: callback{slot:10b} unless dimension minecraft:overworld run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:10b} unless dimension minecraft:overworld run data modify storage sketch: in.listener set value {id:"Overworld", canTeleport:true}

# the nether
    execute if data storage sketch: callback{slot:11b} if dimension minecraft:the_nether run item replace block 10000 0 10000 container.0 with minecraft:red_stained_glass{display:{Name:'"the nether"'}}
    execute if data storage sketch: callback{slot:11b} if dimension minecraft:the_nether run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:11b} if dimension minecraft:the_nether run data modify storage sketch: in.listener set value {id:"TheNether", canTeleport:false}

    execute if data storage sketch: callback{slot:11b} unless dimension minecraft:the_nether run item replace block 10000 0 10000 container.0 with minecraft:lime_stained_glass{display:{Name:'"the nether"'}}
    execute if data storage sketch: callback{slot:11b} unless dimension minecraft:the_nether run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:11b} unless dimension minecraft:the_nether run data modify storage sketch: in.listener set value {id:"TheNether", canTeleport:true}

# the end
    execute if data storage sketch: callback{slot:12b} if dimension minecraft:the_end run item replace block 10000 0 10000 container.0 with minecraft:red_stained_glass{display:{Name:'"the end"'}}
    execute if data storage sketch: callback{slot:12b} if dimension minecraft:the_end run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:12b} if dimension minecraft:the_end run data modify storage sketch: in.listener set value {id:"TheEnd", canTeleport:false}

    execute if data storage sketch: callback{slot:12b} unless dimension minecraft:the_end run item replace block 10000 0 10000 container.0 with minecraft:lime_stained_glass{display:{Name:'"the end"'}}
    execute if data storage sketch: callback{slot:12b} unless dimension minecraft:the_end run item modify block 10000 0 10000 container.0 sketch:register_item/button
    execute if data storage sketch: callback{slot:12b} unless dimension minecraft:the_end run data modify storage sketch: in.listener set value {id:"TheEnd", canTeleport:true}
