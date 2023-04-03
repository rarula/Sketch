#> sketch:core/api/set_menu/_
#
# @input
#   storage sketch: in
#       id: any
#
# @within function sketch:api/set_menu

# 開いているチェストの種類ごとの処理
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} run function sketch:core/api/set_menu/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} run function sketch:core/api/set_menu/ender_chest

# リセット
    data remove storage sketch: in
