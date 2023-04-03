#> sketch:core/handler/on_container_open/ender_chest/_
#
# エンダーチェストを開いた時に呼び出される
#
# @within function sketch:core/emitter/check_container_open/ender_chest

# OhMyDatに開いているチェストの種類を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType set value "EnderChest"


# コールバック
    function #sketch:handler/on_open/ender_chest
