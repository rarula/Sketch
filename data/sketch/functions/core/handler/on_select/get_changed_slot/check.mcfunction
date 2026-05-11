#> sketch:core/handler/on_select/get_changed_slot/check
# @macro
# @within function sketch:core/handler/on_select/get_changed_slot/loop

$execute if data storage sketch:temp Contents[{Slot:$(_gcs_slot)b,tag:{Sketch:{isButton:true}}}] unless data storage sketch:temp CurrentContents[{Slot:$(_gcs_slot)b,tag:{Sketch:{isButton:true}}}] run data modify storage sketch:temp Item set from storage sketch:temp Contents[{Slot:$(_gcs_slot)b}]
