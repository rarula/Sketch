#> example:inventorygui/gui/server_list/check
# @within tag/function inventorygui:callback

execute if data storage inventorygui: id{gui:"SERVER_LIST"} run function example:inventorygui/gui/server_list/_

execute if data storage inventorygui: id.cmd run function example:inventorygui/gui/server_list/cmd/check
