#> inventory_gui:core/action/interact/filter/0
# @within function inventory_gui:core/action/interact/filter/1

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={0-0=true}}] if entity @s[tag=InvGui.Filter.0-0] run function inventory_gui:core/action/interact/filter/found
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={0-1=true}}] if entity @s[tag=InvGui.Filter.0-1] run function inventory_gui:core/action/interact/filter/found
