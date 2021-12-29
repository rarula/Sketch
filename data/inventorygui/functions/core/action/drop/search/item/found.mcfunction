#> inventorygui:core/action/drop/search/item/found
# @within function inventorygui:core/action/drop/search/item/_

# InventoryGuiのアイテムとして設定
    data modify storage inventorygui:core/action/drop _.DroppedItemData set from storage inventorygui:core/action/drop _.Search.DroppedItemData

# タグを設定
    tag @s add InvGui.DroppedItem
