#> sketch:core/handler/on_item_drop/_
#
# アイテムドロップ時に呼び出される
#
# @within function sketch:core/emitter/check_item_drop/found_dropped_item/player

# イベントを発火
    data modify storage sketch:temp SelectionType set value "DROP"
    function sketch:core/handler/on_select/_
