#> sketch:core/handler/on_container_close/ender_chest
#
# エンダーチェストを閉じた時に呼び出される
#
# @within function sketch:core/emitter/check_container_close/ender_chest

# コールバックの戻り値を設定
    data modify storage sketch:temp CurrentContents set from entity @s EnderItems
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{}}}]

# コールバック
    data modify storage sketch: callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_close/ender_chest

# リセット
    data remove storage sketch: callback
    data remove storage sketch:temp CurrentContents


# OhMyDatのメニューの情報を削除
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType
