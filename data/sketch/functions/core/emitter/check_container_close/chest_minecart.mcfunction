#> sketch:core/emitter/check_container_close/chest_minecart
#
# チェスト付きトロッコを閉じた動作をイベントとして発火する
#
# @within tag/function close_detector:on_closed

# 閉じたチェストがチェスト付きトロッコ -> イベントを発火
    execute if predicate open:chest_minecart run function sketch:core/handler/on_container_close/chest_minecart
