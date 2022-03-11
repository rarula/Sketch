#> inventory_gui:core/action/interact/filter/found
# @within function inventory_gui:core/action/interact/filter/0

# スコアを設定
    scoreboard players operation @a[tag=InvGui.Filter.this, limit=1] InventoryGuiId = @s InventoryGuiId

# idを取得 (OhMyDat)
    function #oh_my_dat:please
