#> sketch:core/handler/on_select/menu_type/ender_chest/_
# @within function sketch:core/handler/on_select/_

# メニューの情報を取得
    function #oh_my_dat:please
    data modify storage sketch:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.MenuId
    data modify storage sketch:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.Contents
    data modify storage sketch:temp CurrentContents set from entity @s EnderItems

# 変更されたスロットのアイテムを取得
    function sketch:core/handler/on_select/get_changed_slot

# 通常アイテムを取得
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{isButton:true}}}]

# コールバック
    function sketch:core/handler/on_select/menu_type/ender_chest/callback

# リセット
    data remove storage sketch:temp MenuId
    data remove storage sketch:temp Contents
    data remove storage sketch:temp CurrentContents
    data remove storage sketch:temp Item
