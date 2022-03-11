#> inventory_gui:core/action/interact/filter/12
# @within function inventory_gui:core/action/interact/filter/13

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={12-0=true}}] if entity @s[tag=InvGui.Filter.12-0] run function inventory_gui:core/action/interact/filter/11
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={12-1=true}}] if entity @s[tag=InvGui.Filter.12-1] run function inventory_gui:core/action/interact/filter/11
