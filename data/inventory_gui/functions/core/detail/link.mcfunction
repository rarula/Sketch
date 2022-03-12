#> inventory_gui:core/detail/link
# @within function inventory_gui:api/link

#>
# @private
#declare tag InvGui.Link.this

# エンティティと紐付け
    tag @s add InvGui.Link.this
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.RegisteredEntity] if score @s InventoryGuiId = @a[tag=InvGui.Link.this, limit=1] InventoryGuiId run tag @s add InvGui.ConnectingAt
    tag @s remove InvGui.Link.this
