#> inventorygui:core/action/interact/search/0
# @within function inventorygui:core/action/interact/search/1

execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={0-0=true}}] if entity @s[tag=InvGui.Filter.0-0] run function inventorygui:core/action/interact/search/found
execute if entity @a[tag=InvGui.Filter.this, advancements={inventorygui:interact={0-1=true}}] if entity @s[tag=InvGui.Filter.0-1] run function inventorygui:core/action/interact/search/found
