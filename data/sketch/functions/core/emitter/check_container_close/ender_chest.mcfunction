#> sketch:core/emitter/check_container_close/ender_chest
#
# エンダーチェストを閉じた動作をイベントとして発火する
#
# @within tag/function close_detector:on_closed

# 閉じたチェストがエンダーチェスト -> イベントを発火
    execute if predicate open:ender_chest run function sketch:core/handler/on_container_close/ender_chest
