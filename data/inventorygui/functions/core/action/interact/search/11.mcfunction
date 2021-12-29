#> inventorygui:core/action/interact/search/11
# @within function inventorygui:core/action/interact/search/12

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={11-0=true}}] if entity @s[tag=InvGui.Filter.11-0] run function inventorygui:core/action/interact/search/10
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={11-1=true}}] if entity @s[tag=InvGui.Filter.11-1] run function inventorygui:core/action/interact/search/10
