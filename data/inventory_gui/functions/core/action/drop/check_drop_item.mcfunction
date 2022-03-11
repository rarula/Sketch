#> inventory_gui:core/action/drop/check_drop_item
#
# ドロップされたアイテムに対する処理を行う
#
# @within function inventory_gui:core/tick

# InventoryGuiのアイテムであるか確認
    data modify storage inventory_gui:temp ItemData set from entity @s
    execute if data storage inventory_gui:temp ItemData.Item.tag.InventoryGui{Button:true} run function inventory_gui:core/action/drop/_

# リセット
    data remove storage inventory_gui:temp ItemData
