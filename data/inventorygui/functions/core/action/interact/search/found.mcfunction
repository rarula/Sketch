#> inventorygui:core/action/interact/search/found
# @within function inventorygui:core/action/interact/search/0

# スコアを設定
    scoreboard players operation @a[tag=InvGui.Filter.this, limit=1] InventoryGuiId = @s InventoryGuiId

# OhMyDat
    function #oh_my_dat:please
