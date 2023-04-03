#> sketch:core/handler/on_select/get_changed_slot
#
# 変更されたスロットのアイテムを取得する
#
# @output
#   storage sketch:temp
#       Item: Item
#           変更されたスロットのアイテム
#
# @within function sketch:core/handler/on_select/menu_type/*/_

execute if data storage sketch:temp Contents[{Slot:0b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:0b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:0b}]
execute if data storage sketch:temp Contents[{Slot:1b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:1b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:1b}]
execute if data storage sketch:temp Contents[{Slot:2b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:2b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:2b}]
execute if data storage sketch:temp Contents[{Slot:3b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:3b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:3b}]
execute if data storage sketch:temp Contents[{Slot:4b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:4b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:4b}]
execute if data storage sketch:temp Contents[{Slot:5b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:5b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:5b}]
execute if data storage sketch:temp Contents[{Slot:6b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:6b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:6b}]
execute if data storage sketch:temp Contents[{Slot:7b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:7b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:7b}]
execute if data storage sketch:temp Contents[{Slot:8b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:8b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:8b}]
execute if data storage sketch:temp Contents[{Slot:9b,  tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:9b,  tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:9b}]
execute if data storage sketch:temp Contents[{Slot:10b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:10b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:10b}]
execute if data storage sketch:temp Contents[{Slot:11b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:11b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:11b}]
execute if data storage sketch:temp Contents[{Slot:12b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:12b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:12b}]
execute if data storage sketch:temp Contents[{Slot:13b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:13b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:13b}]
execute if data storage sketch:temp Contents[{Slot:14b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:14b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:14b}]
execute if data storage sketch:temp Contents[{Slot:15b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:15b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:15b}]
execute if data storage sketch:temp Contents[{Slot:16b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:16b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:16b}]
execute if data storage sketch:temp Contents[{Slot:17b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:17b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:17b}]
execute if data storage sketch:temp Contents[{Slot:18b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:18b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:18b}]
execute if data storage sketch:temp Contents[{Slot:19b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:19b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:19b}]
execute if data storage sketch:temp Contents[{Slot:20b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:20b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:20b}]
execute if data storage sketch:temp Contents[{Slot:21b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:21b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:21b}]
execute if data storage sketch:temp Contents[{Slot:22b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:22b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:22b}]
execute if data storage sketch:temp Contents[{Slot:23b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:23b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:23b}]
execute if data storage sketch:temp Contents[{Slot:24b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:24b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:24b}]
execute if data storage sketch:temp Contents[{Slot:25b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:25b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:25b}]
execute if data storage sketch:temp Contents[{Slot:26b, tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:26b, tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:26b}]
