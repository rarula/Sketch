#> inventorygui:core/action/interact/search/8
# @within function inventorygui:core/action/interact/search/9

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={8-0=true}}] if entity @s[tag=InvGui.Filter.8-0] run function inventorygui:core/action/interact/search/7
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={8-1=true}}] if entity @s[tag=InvGui.Filter.8-1] run function inventorygui:core/action/interact/search/7
