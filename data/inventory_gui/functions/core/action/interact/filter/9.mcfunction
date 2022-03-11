#> inventory_gui:core/action/interact/filter/9
# @within function inventory_gui:core/action/interact/filter/10

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={9-0=true}}] if entity @s[tag=InvGui.Filter.9-0] run function inventory_gui:core/action/interact/filter/8
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={9-1=true}}] if entity @s[tag=InvGui.Filter.9-1] run function inventory_gui:core/action/interact/filter/8
