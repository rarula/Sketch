#> inventorygui:core/action/interact/search/10
# @within function inventorygui:core/action/interact/search/11

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={10-0=true}}] if entity @s[tag=InvGui.Filter.10-0] run function inventorygui:core/action/interact/search/9
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={10-1=true}}] if entity @s[tag=InvGui.Filter.10-1] run function inventorygui:core/action/interact/search/9
