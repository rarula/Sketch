#> sketch:core/handler/on_interact/_
#
# チェスト付きトロッコにインタラクトしたときに呼び出される
#
# @within advancement sketch:interact

#>
# @private
#declare score_holder _


## 前処理
# インタラクト先のエンティティを探索
    function sketch:core/handler/on_interact/filter/search

# リセット
    advancement revoke @s only sketch:interact


## メイン処理
# コールバック
    function #sketch:on_open


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp OhMyDatID
