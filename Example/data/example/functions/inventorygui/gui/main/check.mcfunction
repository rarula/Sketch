#> example:inventorygui/gui/main/check
# @within tag/function inventorygui:callback

execute if data storage inventorygui: id{gui:"MAIN"} run function example:inventorygui/gui/main/_

execute if data storage inventorygui: id.cmd run function example:inventorygui/gui/main/cmd/check
