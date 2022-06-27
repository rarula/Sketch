#> sketch:core/handler/on_click/_
#
# アイテムをクリックしたときに呼び出される
#
# @within function sketch:core/handler/on_click/check_clicked_item

# コールバック
    data modify storage sketch: out.selectionType set value "CLICK"
    function sketch:core/select/_
