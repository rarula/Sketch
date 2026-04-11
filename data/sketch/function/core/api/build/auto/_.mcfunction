#> sketch:core/api/build/auto/_
#
# @input
#   storage sketch: in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function sketch:api/build/auto

# 開いているチェストの種類ごとの処理
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} as @e[type=minecraft:chest_minecart, tag=Sketch.Target] run function sketch:api/build/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} run function sketch:api/build/ender_chest

# リセット
    data remove storage sketch: in
