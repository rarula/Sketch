#> inventorygui:core/action/interact/search/4
# @within function inventorygui:core/action/interact/search/5

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={4-0=true}}] if entity @s[tag=InvGui.Filter.4-0] run function inventorygui:core/action/interact/search/3
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={4-1=true}}] if entity @s[tag=InvGui.Filter.4-1] run function inventorygui:core/action/interact/search/3
