#> sketch:core/handler/on_open/_
#
# チェスト付きトロッコを開いたときに呼び出される
#
# @within advancement sketch:open

# メニューを開いているプレイヤーとしてタグを設定
    tag @s add Sketch.InMenu

# インタラクト先のエンティティを探索
    function sketch:core/handler/on_open/filter/search

# リセット
    advancement revoke @s only sketch:open

# コールバック
    function #sketch:on_open
