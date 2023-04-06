#> sketch:core/handler/on_select/menu_type/chest_minecart/callback
# @within function sketch:core/handler/on_select/menu_type/chest_minecart/_

# 通常アイテムを取得
    data remove storage sketch:temp CurrentContents[{tag:{Sketch:{}}}]

# コールバック
    data modify storage sketch: callback.id set from storage sketch:temp MenuId
    data modify storage sketch: callback.listener set from storage sketch:temp Item.tag.Sketch.listener
    data modify storage sketch: callback.selectedItem set from storage sketch:temp Item
    data modify storage sketch: callback.selectionType set from storage sketch:temp SelectionType
    data modify storage sketch: callback.otherItems set from storage sketch:temp CurrentContents
    function #sketch:handler/on_select/chest_minecart

# リセット
    data remove storage sketch: callback


# コールバック中にBuildAPIが呼ばれていない -> 現在のメニューを設定
    execute unless data storage sketch:core {BuildApiCalled:true} run function sketch:core/handler/on_select/menu_type/chest_minecart/set_current_menu

# リセット
    data remove storage sketch:core BuildApiCalled