#> sketch:core/emitter/check_container_open/chest_minecart
#
# チェスト付きトロッコを開いた動作をイベントとして発火する
#
# @within advancement sketch:on_container_open

# イベントを発火
    function sketch:core/handler/on_container_open/chest_minecart/_

# リセット
    advancement revoke @s only sketch:on_container_open
