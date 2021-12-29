#> inventorygui:core/action/drop/search/item/_
# @within function inventorygui:core/action/drop/check

# ドロップアイテムのデータを取得
    data modify storage inventorygui:core/action/drop _.Search.DroppedItemData set from entity @s

# InventoryGuiのアイテムであるか確認
    execute if data storage inventorygui:core/action/drop _.Search.DroppedItemData.Item.tag.InventoryGui{Button:true} run function inventorygui:core/action/drop/search/item/found

# リセット
    data remove storage inventorygui:core/action/drop _.Search
