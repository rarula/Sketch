#> inventorygui:core/action/interact/search/12
# @within function inventorygui:core/action/interact/search/13

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={12-0=true}}] if entity @s[tag=InvGui.Filter.12-0] run function inventorygui:core/action/interact/search/11
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={12-1=true}}] if entity @s[tag=InvGui.Filter.12-1] run function inventorygui:core/action/interact/search/11
