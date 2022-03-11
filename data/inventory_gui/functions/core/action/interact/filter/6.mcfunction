#> inventory_gui:core/action/interact/filter/6
# @within function inventory_gui:core/action/interact/filter/7

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={6-0=true}}] if entity @s[tag=InvGui.Filter.6-0] run function inventory_gui:core/action/interact/filter/5
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={6-1=true}}] if entity @s[tag=InvGui.Filter.6-1] run function inventory_gui:core/action/interact/filter/5
