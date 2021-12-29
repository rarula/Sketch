#> inventorygui:core/action/interact/search/13
# @within function inventorygui:core/action/interact/search/14

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={13-0=true}}] if entity @s[tag=InvGui.Filter.13-0] run function inventorygui:core/action/interact/search/12
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={13-1=true}}] if entity @s[tag=InvGui.Filter.13-1] run function inventorygui:core/action/interact/search/12
