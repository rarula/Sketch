#> sketch:core/handler/on_select/menu_type/chest_minecart/_
# @within function sketch:core/handler/on_select/_

## Sketch.Target を設定
    function sketch:core/common/sketch_target/set


# メニューの情報を取得
    execute as @e[type=minecraft:chest_minecart, tag=Sketch.Target] run function #oh_my_dat:please
    data modify storage sketch:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId
    data modify storage sketch:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents
    data modify storage sketch:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=Sketch.Target, limit=1] Items

# 変更されたスロットのアイテムを取得
    function sketch:core/handler/on_select/get_changed_slot

# コールバック
    function sketch:core/handler/on_select/menu_type/chest_minecart/callback

# リセット
    data remove storage sketch:temp MenuId
    data remove storage sketch:temp Contents
    data remove storage sketch:temp CurrentContents
    data remove storage sketch:temp Item


## リセット
    function sketch:core/common/sketch_target/reset
