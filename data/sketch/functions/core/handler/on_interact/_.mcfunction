#> sketch:core/handler/on_interact/_
#
# チェスト付きトロッコにインタラクトしたときに呼び出される
#
# @within advancement sketch:interact

# メニューを開いているプレイヤーとしてタグを設定
    tag @s add Sketch.InMenu

# インタラクト先のエンティティを探索
    function sketch:core/handler/on_interact/filter/search

# リセット
    advancement revoke @s only sketch:interact

# コールバック
    function #sketch:on_open
