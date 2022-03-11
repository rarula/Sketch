#> inventory_gui:core/action/interact/filter/1
# @within function inventory_gui:core/action/interact/filter/2

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={1-0=true}}] if entity @s[tag=InvGui.Filter.1-0] run function inventory_gui:core/action/interact/filter/0
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={1-1=true}}] if entity @s[tag=InvGui.Filter.1-1] run function inventory_gui:core/action/interact/filter/0
