#> inventory_gui:core/action/interact/filter/5
# @within function inventory_gui:core/action/interact/filter/6

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={5-0=true}}] if entity @s[tag=InvGui.Filter.5-0] run function inventory_gui:core/action/interact/filter/4
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={5-1=true}}] if entity @s[tag=InvGui.Filter.5-1] run function inventory_gui:core/action/interact/filter/4
