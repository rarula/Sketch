#> sketch:core/emitter/check_container_open/ender_chest
#
# エンダーチェストを開いた動作をイベントとして発火する
#
# @within tag/function close_detector:on_opened

# 開いたチェストがエンダーチェスト -> イベントを発火
    execute if predicate open:ender_chest run function sketch:core/handler/on_container_open/ender_chest/_
