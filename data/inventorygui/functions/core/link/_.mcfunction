#> inventorygui:core/link/_
# @within function inventorygui:api/link

#>
# @private
#declare tag InvGui.Connect.this

# タグを設定
    tag @s add InvGui.Connect.this

# エンティティにタグを設定
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity] if score @s InventoryGuiId = @a[tag=InvGui.Connect.this, limit=1] InventoryGuiId run tag @s add InvGui.ConnectingAt

# タグを削除
    tag @s remove InvGui.Connect.this
