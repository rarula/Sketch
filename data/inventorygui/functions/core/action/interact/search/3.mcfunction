#> inventorygui:core/action/interact/search/3
# @within function inventorygui:core/action/interact/search/4

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={3-0=true}}] if entity @s[tag=InvGui.Filter.3-0] run function inventorygui:core/action/interact/search/2
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={3-1=true}}] if entity @s[tag=InvGui.Filter.3-1] run function inventorygui:core/action/interact/search/2
