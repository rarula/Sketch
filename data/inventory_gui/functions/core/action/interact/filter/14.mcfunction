#> inventory_gui:core/action/interact/filter/14
# @within function inventory_gui:core/action/interact/filter/15

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={14-0=true}}] if entity @s[tag=InvGui.Filter.14-0] run function inventory_gui:core/action/interact/filter/13
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={14-1=true}}] if entity @s[tag=InvGui.Filter.14-1] run function inventory_gui:core/action/interact/filter/13
