#> inventorygui:core/action/interact/search/6
# @within function inventorygui:core/action/interact/search/7

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={6-0=true}}] if entity @s[tag=InvGui.Filter.6-0] run function inventorygui:core/action/interact/search/5
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={6-1=true}}] if entity @s[tag=InvGui.Filter.6-1] run function inventorygui:core/action/interact/search/5
