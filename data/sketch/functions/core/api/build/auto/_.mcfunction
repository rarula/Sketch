#> sketch:core/api/build/auto/_
#
# @input
#   storage sketch:data in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function sketch:api/build/auto

# Processing for each type of opened chest
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} as @e[type=minecraft:chest_minecart, tag=Sketch.Target] run function sketch:api/build/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} run function sketch:api/build/ender_chest

# Reset
    data remove storage sketch:data in
