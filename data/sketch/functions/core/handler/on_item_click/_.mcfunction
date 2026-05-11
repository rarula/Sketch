#> sketch:core/handler/on_item_click/_
#
# Called on item click
#
# @within function sketch:core/emitter/check_item_click/_

# Fire event
    data modify storage sketch:temp SelectionType set value "CLICK"
    function sketch:core/handler/on_select/_
