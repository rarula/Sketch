#> inventory_gui:core/action/interact/filter/4
# @within function inventory_gui:core/action/interact/filter/5

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={4-0=true}}] if entity @s[tag=InvGui.Filter.4-0] run function inventory_gui:core/action/interact/filter/3
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={4-1=true}}] if entity @s[tag=InvGui.Filter.4-1] run function inventory_gui:core/action/interact/filter/3
