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
    execute at @s run function #sketch:on_open

# idを設定 (OhMyDat)
    execute store result score _ OhMyDatID run data get storage sketch:temp OhMyDatID
    function #oh_its_dat:please
    data modify storage sketch: out.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Sketch.id

# コールバック
    execute at @s run function #sketch:on_click


## 後処理
# リセット
    data remove storage sketch: out
    data remove storage sketch:temp OhMyDatID
