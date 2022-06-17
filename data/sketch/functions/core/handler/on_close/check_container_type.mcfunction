#> sketch:core/handler/on_close/check_container_type
#
# コンテナを閉じたときに呼び出される
#
# @within tag/function close_detector:on_closed

# Sketchに登録済みのコンテナであればコールバック
    execute if predicate open:chest_minecart run function #sketch:on_close
