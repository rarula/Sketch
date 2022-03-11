#> inventory_gui:core/action/interact/filter/10
# @within function inventory_gui:core/action/interact/filter/11

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={10-0=true}}] if entity @s[tag=InvGui.Filter.10-0] run function inventory_gui:core/action/interact/filter/9
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={10-1=true}}] if entity @s[tag=InvGui.Filter.10-1] run function inventory_gui:core/action/interact/filter/9
