#> inventory_gui:core/action/drop/_
# @within function inventory_gui:core/action/drop/check_drop_item

#>
# @private
#declare tag InvGui.Drop.this

# アイテムをドロップしたプレイヤーを探索
    tag @s add InvGui.Drop.this
    execute at @s as @a[scores={InventoryGuiDrop=1..}, sort=nearest] at @s anchored eyes if entity @e[type=minecraft:item, tag=InvGui.Drop.this, distance=..1.5] run function inventory_gui:core/action/drop/player/check_condition

# リセット
    kill @s
    data remove storage inventory_gui:temp Result
    data remove storage inventory_gui:temp CompareUUID
