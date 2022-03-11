#> inventory_gui:core/action/interact/filter/7
# @within function inventory_gui:core/action/interact/filter/8

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={7-0=true}}] if entity @s[tag=InvGui.Filter.7-0] run function inventory_gui:core/action/interact/filter/6
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={7-1=true}}] if entity @s[tag=InvGui.Filter.7-1] run function inventory_gui:core/action/interact/filter/6
