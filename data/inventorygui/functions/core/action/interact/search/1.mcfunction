#> inventorygui:core/action/interact/search/1
# @within function inventorygui:core/action/interact/search/2

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={1-0=true}}] if entity @s[tag=InvGui.Filter.1-0] run function inventorygui:core/action/interact/search/0
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={1-1=true}}] if entity @s[tag=InvGui.Filter.1-1] run function inventorygui:core/action/interact/search/0
