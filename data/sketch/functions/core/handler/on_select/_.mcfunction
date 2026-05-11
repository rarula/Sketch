#> sketch:core/handler/on_select/_
#
# Called on selection
#
# @input
#   storage sketch:temp
#       SelectionType: "CLICK" | "DROP"
#           Type of selection
#
# @within function sketch:core/handler/*/_

## Set CalledOnSelect
    data modify storage sketch:core CalledOnSelect set value true


# Processing for each type of opened chest
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} at @s run function sketch:core/handler/on_select/menu_type/chest_minecart/_
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} at @s run function sketch:core/handler/on_select/menu_type/ender_chest/_

# Reset
    data remove storage sketch:temp SelectionType


## Remove CalledOnSelect
    data remove storage sketch:core CalledOnSelect
