#> inventorygui:core/action/interact/search/2
# @within function inventorygui:core/action/interact/search/3

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={2-0=true}}] if entity @s[tag=InvGui.Filter.2-0] run function inventorygui:core/action/interact/search/1
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={2-1=true}}] if entity @s[tag=InvGui.Filter.2-1] run function inventorygui:core/action/interact/search/1
