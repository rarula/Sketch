#> inventory_gui:core/action/interact/filter/8
# @within function inventory_gui:core/action/interact/filter/9

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={8-0=true}}] if entity @s[tag=InvGui.Filter.8-0] run function inventory_gui:core/action/interact/filter/7
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={8-1=true}}] if entity @s[tag=InvGui.Filter.8-1] run function inventory_gui:core/action/interact/filter/7
