#> sketch:core/api/set_menu/_
#
# @input
#   storage sketch:data in
#       id: any
#
# @within function sketch:api/set_menu

## pre
    function sketch:core/common/api/set_menu/pre


# Processing for each type of opened chest
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} run function sketch:core/api/set_menu/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} run function sketch:core/api/set_menu/ender_chest

# Reset
    data remove storage sketch:data in


## post
    function sketch:core/common/api/set_menu/post
