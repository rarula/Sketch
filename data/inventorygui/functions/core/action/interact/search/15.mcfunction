#> inventorygui:core/action/interact/search/15
# @within function inventorygui:core/action/interact/search/_

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={15-0=true}}] if entity @s[tag=InvGui.Filter.15-0] run function inventorygui:core/action/interact/search/14
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={15-1=true}}] if entity @s[tag=InvGui.Filter.15-1] run function inventorygui:core/action/interact/search/14
