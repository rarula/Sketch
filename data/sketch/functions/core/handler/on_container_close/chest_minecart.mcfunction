#> sketch:core/handler/on_container_close/chest_minecart
#
# チェスト付きトロッコを閉じた時に呼び出される
#
# @within function sketch:core/emitter/check_container_close/chest_minecart

## isInCallback を設定
    function sketch:core/common/is_in_callback/set

## Sketch.Target を設定
    function sketch:core/common/sketch_target/set


# コールバックの戻り値を設定
    data modify storage sketch:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=Sketch.Target, limit=1] Items
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{isButton:true}}}]

# コールバック
    data modify storage sketch: callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_close/chest_minecart

# リセット
    data remove storage sketch: callback
    data remove storage sketch:temp CurrentContents


## Sketch.Target を削除
    function sketch:core/common/sketch_target/reset

## isInCallback を削除
    function sketch:core/common/is_in_callback/reset


# OhMyDatのメニューの情報を削除
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.CurrentMenuType

# Sketch.Id を削除
    scoreboard players reset @s Sketch.Id
