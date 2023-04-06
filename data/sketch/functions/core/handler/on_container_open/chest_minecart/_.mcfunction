#> sketch:core/handler/on_container_open/chest_minecart/_
#
# チェスト付きトロッコを開いた時に呼び出される
#
# @within function sketch:core/emitter/check_container_open/chest_minecart

# OhMyDatに開いているチェストの種類を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType set value "Minecart"


# 開いたチェスト付きトロッコを探索
    function sketch:core/handler/on_container_open/chest_minecart/filter/find

# コールバック
    function #sketch:handler/on_open/chest_minecart

# リセット
    function sketch:core/common/sketch_target/reset
