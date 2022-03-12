#> inventory_gui:core/action/interact/filter/found
# @within function inventory_gui:core/action/interact/filter/0

# スコアを設定
    scoreboard players operation @a[tag=InvGui.Filter.this, limit=1] InventoryGuiId = @s InventoryGuiId

# OhMyDatが未設定であれば設定
    execute unless score @s OhMyDatID matches -2147483648..2147483647 run function #oh_my_dat:please

# OhMyDatIDを取得
    scoreboard players operation $OhMyDatID InventoryGui = @s OhMyDatID
