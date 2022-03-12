#> inventory_gui:core/detail/link
# @within function inventory_gui:api/link

#>
# @private
#declare tag InvGui.Link.this

# タグを設定
    tag @s add InvGui.Link.this

# エンティティと紐付け
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity] if score @s InventoryGuiId = @a[tag=InvGui.Link.this, limit=1] InventoryGuiId run tag @s add InvGui.ConnectingAt

# リセット
    tag @s remove InvGui.Link.this
