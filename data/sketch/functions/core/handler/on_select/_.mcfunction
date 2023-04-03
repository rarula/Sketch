#> sketch:core/handler/on_select/_
#
# 選択時に呼び出される
#
# @input
#   storage sketch:temp
#       SelectionType: "CLICK" | "DROP"
#           選択の種類
#
# @within function sketch:core/handler/*/_

## onSelectを使用したものとして設定
    data modify storage sketch:core OnSelectCalled set value true


# 開いているチェストの種類ごとの処理
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"Minecart"} at @s run function sketch:core/handler/on_select/menu_type/chest_minecart/_
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch{CurrentMenuType:"EnderChest"} at @s run function sketch:core/handler/on_select/menu_type/ender_chest/_

# リセット
    data remove storage sketch:temp SelectionType


## onSelectを使用しているかどうかを初期化
    data remove storage sketch:core OnSelectCalled
