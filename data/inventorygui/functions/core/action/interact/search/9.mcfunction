#> inventorygui:core/action/interact/search/9
# @within function inventorygui:core/action/interact/search/10

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={9-0=true}}] if entity @s[tag=InvGui.Filter.9-0] run function inventorygui:core/action/interact/search/8
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={9-1=true}}] if entity @s[tag=InvGui.Filter.9-1] run function inventorygui:core/action/interact/search/8
