#> inventory_gui:core/action/interact/filter/15
# @within function inventory_gui:core/action/interact/filter/search

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={15-0=true}}] if entity @s[tag=InvGui.Filter.15-0] run function inventory_gui:core/action/interact/filter/14
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={15-1=true}}] if entity @s[tag=InvGui.Filter.15-1] run function inventory_gui:core/action/interact/filter/14
