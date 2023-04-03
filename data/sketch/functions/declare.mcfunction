#> sketch:declare
# @private

#>
# @public
    #alias vector Sketch 10000 0 10000

#>
# @public
    #declare storage sketch:

#>
# @public
    #declare tag Sketch.Target
    #declare tag Sketch.Player

#>
# @public
    #declare item_modifier sketch:register_item/normal
    #declare item_modifier sketch:register_item/button

#>
# @public
    #declare tag/function sketch:handler/on_open/chest_minecart
    #declare tag/function sketch:handler/on_open/ender_chest
    #declare tag/function sketch:handler/on_close/chest_minecart
    #declare tag/function sketch:handler/on_close/ender_chest
    #declare tag/function sketch:handler/on_select/chest_minecart
    #declare tag/function sketch:handler/on_select/ender_chest
    #declare tag/function sketch:set_menu/chest_minecart
    #declare tag/function sketch:set_menu/ender_chest
    #declare tag/function sketch:set_variable/chest_minecart
    #declare tag/function sketch:set_variable/ender_chest


#> アイテム保存用のシュルカーボックス
# @within * sketch:**
    #alias vector LocalContainer 10000 1 10000

#> メニュー作成用のシュルカーボックス
# @within * sketch:**
    #alias vector MenuContainer 10000 2 10000


#> データ保存用のストレージ
# @within * sketch:**
    #declare storage sketch:core

#> 一時処理用のストレージ
# @within * sketch:**
    #declare storage sketch:temp
    #declare storage sketch:temp/build

#> utilのストレージ
# @within * sketch:**
    #declare storage sketch:util

#> util一時処理用のストレージ
# @within * sketch:util/**
    #declare storage sketch:util/temp


#> スコアボード
# @within * sketch:**
    #declare objective Sketch
    #declare objective Sketch.Id
    #declare objective Sketch.Drop

#> スコアホルダー
# @within * sketch:**
    #declare score_holder $LocalItemSlotIndex
    #declare score_holder $MinecartIndex

#> 定数
# @within * sketch:**
    #declare score_holder $65536


#> 登録済みエンティティのタグ
# @within * sketch:**
    #declare tag Sketch.Entity

#> エンティティ特定用のタグ
# @within * sketch:**
    #declare tag Sketch.Filter.0-0
    #declare tag Sketch.Filter.1-0
    #declare tag Sketch.Filter.2-0
    #declare tag Sketch.Filter.3-0
    #declare tag Sketch.Filter.4-0
    #declare tag Sketch.Filter.5-0
    #declare tag Sketch.Filter.6-0
    #declare tag Sketch.Filter.7-0
    #declare tag Sketch.Filter.8-0
    #declare tag Sketch.Filter.9-0
    #declare tag Sketch.Filter.10-0
    #declare tag Sketch.Filter.11-0
    #declare tag Sketch.Filter.12-0
    #declare tag Sketch.Filter.13-0
    #declare tag Sketch.Filter.14-0
    #declare tag Sketch.Filter.15-0
    #declare tag Sketch.Filter.0-1
    #declare tag Sketch.Filter.1-1
    #declare tag Sketch.Filter.2-1
    #declare tag Sketch.Filter.3-1
    #declare tag Sketch.Filter.4-1
    #declare tag Sketch.Filter.5-1
    #declare tag Sketch.Filter.6-1
    #declare tag Sketch.Filter.7-1
    #declare tag Sketch.Filter.8-1
    #declare tag Sketch.Filter.9-1
    #declare tag Sketch.Filter.10-1
    #declare tag Sketch.Filter.11-1
    #declare tag Sketch.Filter.12-1
    #declare tag Sketch.Filter.13-1
    #declare tag Sketch.Filter.14-1
    #declare tag Sketch.Filter.15-1


#> advancement
# @within * sketch:**
    #declare advancement sketch:on_container_open

#> item_modifier
# @within * sketch:**
    #declare item_modifier sketch:set_listener

#> loot_table
# @within * sketch:**
    #declare loot_table sketch:set_empty

#> tag/item
# @within * sketch:**
    #declare tag/item sketch:all


#> OhMyDat
# @within * sketch:**
    #declare storage oh_my_dat:
    #declare tag/function oh_my_dat:please

#> CloseDetector
# @within * sketch:**
    #declare predicate open:chest_minecart
    #declare predicate open:ender_chest
