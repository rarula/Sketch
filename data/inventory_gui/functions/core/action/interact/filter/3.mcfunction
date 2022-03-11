#> inventory_gui:core/action/interact/filter/3
# @within function inventory_gui:core/action/interact/filter/4

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={3-0=true}}] if entity @s[tag=InvGui.Filter.3-0] run function inventory_gui:core/action/interact/filter/2
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={3-1=true}}] if entity @s[tag=InvGui.Filter.3-1] run function inventory_gui:core/action/interact/filter/2
