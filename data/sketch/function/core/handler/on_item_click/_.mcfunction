#> sketch:core/handler/on_item_click/_
#
# アイテムクリック時に呼び出される
#
# @within function sketch:core/emitter/check_item_click/_

# イベントを発火
    data modify storage sketch:temp SelectionType set value "CLICK"
    function sketch:core/handler/on_select/_
