#> inventorygui:core/action/interact/search/14
# @within function inventorygui:core/action/interact/search/15

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={14-0=true}}] if entity @s[tag=InvGui.Filter.14-0] run function inventorygui:core/action/interact/search/13
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={14-1=true}}] if entity @s[tag=InvGui.Filter.14-1] run function inventorygui:core/action/interact/search/13
