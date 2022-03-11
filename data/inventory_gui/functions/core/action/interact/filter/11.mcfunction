#> inventory_gui:core/action/interact/filter/11
# @within function inventory_gui:core/action/interact/filter/12

execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={11-0=true}}] if entity @s[tag=InvGui.Filter.11-0] run function inventory_gui:core/action/interact/filter/10
execute if entity @a[tag=InvGui.Filter.this, advancements={inventory_gui:interact={11-1=true}}] if entity @s[tag=InvGui.Filter.11-1] run function inventory_gui:core/action/interact/filter/10
