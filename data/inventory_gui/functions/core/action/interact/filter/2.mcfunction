#> inventory_gui:core/action/interact/filter/2
# @within function inventory_gui:core/action/interact/filter/3

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={2-0=true}}] if entity @s[tag=InvGui.Filter.2-0] run function inventory_gui:core/action/interact/filter/1
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={2-1=true}}] if entity @s[tag=InvGui.Filter.2-1] run function inventory_gui:core/action/interact/filter/1
