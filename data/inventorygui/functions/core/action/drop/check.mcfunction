#> inventorygui:core/action/drop/check
#
# アイテムドロップ時に呼び出される
#
# @within function inventorygui:core/action/tick

#>
# @within inventorygui:core/action/drop/**
    #declare storage inventorygui:core/action/drop
    #declare tag InvGui.DroppedItem

# ドロップアイテム探索
    function inventorygui:core/action/drop/search/item/_

# InventoryGuiのアイテムであれば実行
    execute if data storage inventorygui:core/action/drop _.DroppedItemData run function inventorygui:core/action/drop/_

# リセット
    data remove storage inventorygui:core/action/drop _
