#> inventory_gui:core/action/interact/filter/13
# @within function inventory_gui:core/action/interact/filter/14

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={13-0=true}}] if entity @s[tag=InvGui.Filter.13-0] run function inventory_gui:core/action/interact/filter/12
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={13-1=true}}] if entity @s[tag=InvGui.Filter.13-1] run function inventory_gui:core/action/interact/filter/12
